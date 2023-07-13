//CoorConv.hpp
#ifndef __COORCONV_H__
#define __COORCONV_H__

#include <cmath>
#include<iostream> //C++标准输入输出库

using namespace std;

double pi = 3.14159265358979;

/* Ellipsoid model constants (actual values here are for WGS84) */
double sm_a = 6378137.0;
double sm_b = 6356752.314;
double sm_EccSquared = 6.69437999013e-03;
double UTMScaleFactor = 0.9996;

typedef struct tagUTMCorr 
{
	double x;
	double y;
}UTMCoor;  //UTM坐标系

typedef struct tagWGS84Corr
{
	double lat;
	double log;
}WGS84Corr;  //经纬度
/*
* DegToRad
*
* Converts degrees to radians.
* 将度数转换为弧度
*/
inline double DegToRad (double deg)
{
	return (deg / 180.0 * pi);
}

/*
* RadToDeg
*
* Converts radians to degrees.
* 将弧度转换为度数
*/
inline double RadToDeg (double rad)
{
	return (rad / pi * 180.0);
}

/*
* ArcLengthOfMeridian
*
* Computes the ellipsoidal distance from the equator to a point at a
* given latitude.  计算从赤道到a点的椭圆距离给定纬度。
*
* Reference: Hoffmann-Wellenhof, B., Lichtenegger, H., and Collins, J.,
* GPS: Theory and Practice, 3rd ed.  New York: Springer-Verlag Wien, 1994.
*
* Inputs:
*     phi - Latitude of the point, in radians.
*     phi-点的纬度，以弧度为单位。
* Globals:
*     sm_a - Ellipsoid model major axis.
*     sm_b - Ellipsoid model minor axis.
*
* Returns:
*     The ellipsoidal distance of the point from the equator, in meters.
*     点到赤道的椭圆距离，以米为单位
*/
double ArcLengthOfMeridian (double phi)
{
	double alpha, beta, gamma, delta, epsilon, n;
	double result;

	/* Precalculate n */
	n = (sm_a - sm_b) / (sm_a + sm_b);

	/* Precalculate alpha */
	alpha = ((sm_a + sm_b) / 2.0) * (1.0 + (pow(n, 2.0) / 4.0) + (pow(n, 4.0) / 64.0));

	/* Precalculate beta */
	beta = (-3.0 * n / 2.0) + (9.0 * pow(n, 3.0) / 16.0) + (-3.0 * pow(n, 5.0) / 32.0);

	/* Precalculate gamma */
	gamma = (15.0 * pow(n, 2.0) / 16.0) + (-15.0 * pow(n, 4.0) / 32.0);

	/* Precalculate delta */
	delta = (-35.0 * pow(n, 3.0) / 48.0) + (105.0 * pow(n, 5.0) / 256.0);

	/* Precalculate epsilon */
	epsilon = (315.0 * pow(n, 4.0) / 512.0);

	/* Now calculate the sum of the series and return */
	result = alpha * (phi + (beta * sin(2.0 * phi)) + (gamma * sin(4.0 * phi)) + (delta * sin(6.0 * phi)) + (epsilon * sin(8.0 * phi)));

	return result;
}

/*
* UTMCentralMeridian
* UTMC中央子午线
* Determines the central meridian for the given UTM zone.
* 确定给定UTM区域的中央子午线
* Inputs:
*     zone - An integer value designating the UTM zone, range [1,60].
*     zone-  指定UTM区域的整数值，范围[1,60]
* Returns:
*   The central meridian for the given UTM zone, in radians, or zero
*   给定UTM区域的中央子午线，以弧度为单位
*   if the UTM zone parameter is outside the range [1,60].
*    如果UTM区域参数不在[1,60]范围内，返回0
*   Range of the central meridian is the radian equivalent of [-177,+177].
*   中央子午线的范围是[-177，+ 177]的弧度
*/
inline double UTMCentralMeridian (int zone)
{
	return DegToRad(-183.0 + (zone * 6.0));
}


/*
* FootpointLatitude
*
* Computes the footpoint latitude for use in converting transverse
* 计算用于转换横向的立足点纬度
* Mercator coordinates to ellipsoidal coordinates.
*
* Reference: Hoffmann-Wellenhof, B., Lichtenegger, H., and Collins, J.,
*   GPS: Theory and Practice, 3rd ed.  New York: Springer-Verlag Wien, 1994.
*
* Inputs:
*   y - The UTM northing coordinate, in meters.
*   y - UTM北坐标，以米为单位
* Returns:
*   The footpoint latitude, in radians.
*   返回立足点的纬度，以弧度为单位
*
*/
double FootpointLatitude (double y)
{
	double y_, alpha_, beta_, gamma_, delta_, epsilon_, n;
	double result;

	/* Precalculate n (Eq. 10.18) */
	n = (sm_a - sm_b) / (sm_a + sm_b);

	/* Precalculate alpha_ (Eq. 10.22) */
	/* (Same as alpha in Eq. 10.17) */
	alpha_ = ((sm_a + sm_b) / 2.0) * (1 + (pow(n, 2.0) / 4) + (pow(n, 4.0) / 64));

	/* Precalculate y_ (Eq. 10.23) */
	y_ = y / alpha_;

	/* Precalculate beta_ (Eq. 10.22) */
	beta_ = (3.0 * n / 2.0) + (-27.0 * pow(n, 3.0) / 32.0) + (269.0 * pow(n, 5.0) / 512.0);

	/* Precalculate gamma_ (Eq. 10.22) */
	gamma_ = (21.0 * pow(n, 2.0) / 16.0) + (-55.0 * pow(n, 4.0) / 32.0);

	/* Precalculate delta_ (Eq. 10.22) */
	delta_ = (151.0 * pow (n, 3.0) / 96.0)	+ (-417.0 * pow (n, 5.0) / 128.0);

	/* Precalculate epsilon_ (Eq. 10.22) */
	epsilon_ = (1097.0 * pow(n, 4.0) / 512.0);

	/* Now calculate the sum of the series (Eq. 10.21) */
	result = y_ + (beta_ * sin(2.0 * y_)) + (gamma_ * sin(4.0 * y_)) + (delta_ * sin(6.0 * y_)) + (epsilon_ * sin(8.0 * y_));

	return result;
}

/*
* MapLatLonToXY
*
* Converts a latitude/longitude pair to x and y coordinates in the
* Transverse Mercator projection.  Note that Transverse Mercator is not
* the same as UTM; a scale factor is required to convert between them.
**将纬度/经度对转换为x和y坐标，横向墨卡托投影。 请注意，横轴墨卡托与UTM不同； 需要比例因子在它们之间进行转换。
* Reference: Hoffmann-Wellenhof, B., Lichtenegger, H., and Collins, J.,
* GPS: Theory and Practice, 3rd ed.  New York: Springer-Verlag Wien, 1994.
*
* Inputs:
*    phi-点的纬度，以弧度为单位。
*    lambda-点的经度，以弧度为单位。
*    lambda0-要使用的中央子午线的经度，以弧度为单位。
* Outputs:
*    xy-一个2元素的数组，其中包含计算点的x和y坐标
* Returns:
*    The function does not return a value.
*
*/
void MapLatLonToXY (double phi, double lambda, double lambda0, UTMCoor &xy)
{
	double N, nu2, ep2, t, t2, l;
	double l3coef, l4coef, l5coef, l6coef, l7coef, l8coef;
	double tmp;

	/* Precalculate ep2 */
	ep2 = (pow(sm_a, 2.0) - pow(sm_b, 2.0)) / pow(sm_b, 2.0);

	/* Precalculate nu2 */
	nu2 = ep2 * pow(cos(phi), 2.0);

	/* Precalculate N */
	N = pow(sm_a, 2.0) / (sm_b * sqrt(1 + nu2));

	/* Precalculate t */
	t = tan (phi);
	t2 = t * t;
	tmp = (t2 * t2 * t2) - pow (t, 6.0);

	/* Precalculate l */
	l = lambda - lambda0;

	/* Precalculate coefficients for l**n in the equations below
	so a normal human being can read the expressions for easting
	and northing
	-- l**1 and l**2 have coefficients of 1.0 */
	l3coef = 1.0 - t2 + nu2;

	l4coef = 5.0 - t2 + 9 * nu2 + 4.0 * (nu2 * nu2);

	l5coef = 5.0 - 18.0 * t2 + (t2 * t2) + 14.0 * nu2 - 58.0 * t2 * nu2;

	l6coef = 61.0 - 58.0 * t2 + (t2 * t2) + 270.0 * nu2	- 330.0 * t2 * nu2;

	l7coef = 61.0 - 479.0 * t2 + 179.0 * (t2 * t2) - (t2 * t2 * t2);

	l8coef = 1385.0 - 3111.0 * t2 + 543.0 * (t2 * t2) - (t2 * t2 * t2);

	/* Calculate easting (x) */
	xy.x = N * cos (phi) * l + (N / 6.0 * pow(cos(phi), 3.0) * l3coef * pow(l, 3.0))
		+ (N / 120.0 * pow(cos(phi), 5.0) * l5coef * pow(l, 5.0))
		+ (N / 5040.0 * pow(cos (phi), 7.0) * l7coef * pow(l, 7.0));

	// cout<<"x "<<xy.x<<endl;

	/* Calculate northing (y) */
	xy.y = ArcLengthOfMeridian (phi)
		+ (t / 2.0 * N * pow(cos(phi), 2.0) * pow(l, 2.0))
		+ (t / 24.0 * N * pow(cos(phi), 4.0) * l4coef * pow(l, 4.0))
		+ (t / 720.0 * N * pow(cos(phi), 6.0) * l6coef * pow(l, 6.0))
		+ (t / 40320.0 * N * pow(cos(phi), 8.0) * l8coef * pow(l, 8.0));
	// cout<<"y "<<xy.y<<endl;
	ROS_INFO("转换坐标函数结束");   
}



/*
* MapXYToLatLon
*
* Converts x and y coordinates in the Transverse Mercator projection to
* a latitude/longitude pair.  Note that Transverse Mercator is not
* the same as UTM; a scale factor is required to convert between them.
*  将“横向墨卡托”投影中的x和y坐标转换为纬度/经度对。
*  请注意，横轴墨卡托与UTM不同；需要比例因子在它们之间进行转换。
* Reference: Hoffmann-Wellenhof, B., Lichtenegger, H., and Collins, J.,
*   GPS: Theory and Practice, 3rd ed.  New York: Springer-Verlag Wien, 1994.
*
* Inputs:
*   x - The easting of the point, in meters.
*   y - The northing of the point, in meters.
*   lambda0 - Longitude of the central meridian to be used, in radians.
*
* Outputs:
*   philambda - A 2-element containing the latitude and longitude
*               in radians.
* 输入：
*    x-点的东移，以米为单位。
*    y-点的北，以米为单位。
*    lambda0-要使用的中央子午线的经度，以弧度为单位。
*
*输出：
*     philambda-包含纬度和经度的2元素，单位为弧度。
* Returns:
*   The function does not return a value.
*
* Remarks:
*   The local variables Nf, nuf2, tf, and tf2 serve the same purpose as
*   N, nu2, t, and t2 in MapLatLonToXY, but they are computed with respect
*   to the footpoint latitude phif.
*
*   x1frac, x2frac, x2poly, x3poly, etc. are to enhance readability and
*   to optimize computations.
*
*/
void MapXYToLatLon (double x, double y, double lambda0, WGS84Corr &philambda)
{
	double phif, Nf, Nfpow, nuf2, ep2, tf, tf2, tf4, cf;
	double x1frac, x2frac, x3frac, x4frac, x5frac, x6frac, x7frac, x8frac;
	double x2poly, x3poly, x4poly, x5poly, x6poly, x7poly, x8poly;

	/* Get the value of phif, the footpoint latitude. */
	phif = FootpointLatitude (y);

	/* Precalculate ep2 */
	ep2 = (pow(sm_a, 2.0) - pow(sm_b, 2.0))	/ pow(sm_b, 2.0);

	/* Precalculate cos (phif) */
	cf = cos (phif);

	/* Precalculate nuf2 */
	nuf2 = ep2 * pow (cf, 2.0);

	/* Precalculate Nf and initialize Nfpow */
	Nf = pow(sm_a, 2.0) / (sm_b * sqrt(1 + nuf2));
	Nfpow = Nf;

	/* Precalculate tf */
	tf = tan (phif);
	tf2 = tf * tf;
	tf4 = tf2 * tf2;

	/* Precalculate fractional coefficients for x**n in the equations
	below to simplify the expressions for latitude and longitude. */
	x1frac = 1.0 / (Nfpow * cf);

	Nfpow *= Nf;   /* now equals Nf**2) */
	x2frac = tf / (2.0 * Nfpow);

	Nfpow *= Nf;   /* now equals Nf**3) */
	x3frac = 1.0 / (6.0 * Nfpow * cf);

	Nfpow *= Nf;   /* now equals Nf**4) */
	x4frac = tf / (24.0 * Nfpow);

	Nfpow *= Nf;   /* now equals Nf**5) */
	x5frac = 1.0 / (120.0 * Nfpow * cf);

	Nfpow *= Nf;   /* now equals Nf**6) */
	x6frac = tf / (720.0 * Nfpow);

	Nfpow *= Nf;   /* now equals Nf**7) */
	x7frac = 1.0 / (5040.0 * Nfpow * cf);

	Nfpow *= Nf;   /* now equals Nf**8) */
	x8frac = tf / (40320.0 * Nfpow);

	/* Precalculate polynomial coefficients for x**n.
	-- x**1 does not have a polynomial coefficient. */
	x2poly = -1.0 - nuf2;

	x3poly = -1.0 - 2 * tf2 - nuf2;

	x4poly = 5.0 + 3.0 * tf2 + 6.0 * nuf2 - 6.0 * tf2 * nuf2 - 3.0 * (nuf2 *nuf2) - 9.0 * tf2 * (nuf2 * nuf2);

	x5poly = 5.0 + 28.0 * tf2 + 24.0 * tf4 + 6.0 * nuf2 + 8.0 * tf2 * nuf2;

	x6poly = -61.0 - 90.0 * tf2 - 45.0 * tf4 - 107.0 * nuf2	+ 162.0 * tf2 * nuf2;

	x7poly = -61.0 - 662.0 * tf2 - 1320.0 * tf4 - 720.0 * (tf4 * tf2);

	x8poly = 1385.0 + 3633.0 * tf2 + 4095.0 * tf4 + 1575 * (tf4 * tf2);

	/* Calculate latitude */
	philambda.lat = phif + x2frac * x2poly * (x * x) + x4frac * x4poly * pow(x, 4.0) + x6frac * x6poly * pow(x, 6.0) + x8frac * x8poly * pow(x, 8.0);

	/* Calculate longitude */
	philambda.log = lambda0 + x1frac * x + x3frac * x3poly * pow(x, 3.0) + x5frac * x5poly * pow(x, 5.0) + x7frac * x7poly * pow(x, 7.0);
}


/*
* LatLonToUTMXY
*
* Converts a latitude/longitude pair to x and y coordinates in the
* Universal Transverse Mercator projection.
* 将纬度/经度对转换为x和y坐标
* Inputs:
*   lat - Latitude of the point, in radians.
*   lon - Longitude of the point, in radians.
*   zone - UTM zone to be used for calculating values for x and y.
*          If zone is less than 1 or greater than 60, the routine
*          will determine the appropriate zone from the value of lon.
* 输入：
*   lat-点的纬度，以弧度为单位。
*   lon-点的经度，以弧度为单位。
*   zone-用于计算x和y值的UTM区域。
*   如果区域小于1或大于60，则例程将根据lon的值确定适当的区域。
* Outputs:
*   xy - A 2-element array where the UTM x and y values will be stored.
*   xy-2元素数组，将存储UTM x和y值
* Returns:
*   void
*
*/
void LatLonToUTMXY (double lat, double lon, int zone, UTMCoor &xy)
{
	MapLatLonToXY (lat, lon, UTMCentralMeridian(zone), xy);

	/* Adjust easting and northing for UTM system. */
	xy.x = xy.x * UTMScaleFactor + 500000.0;
	xy.y = xy.y * UTMScaleFactor;
	if (xy.y < 0.0)
		xy.y += 10000000.0;
}



/*
* UTMXYToLatLon
*
* Converts x and y coordinates in the Universal Transverse Mercator
* projection to a latitude/longitude pair.
* 在通用横轴墨卡托中转换x和y坐标投影到纬度/经度对。
*
* Inputs:
*	x - The easting of the point, in meters.
*	y - The northing of the point, in meters.
*	zone - The UTM zone in which the point lies.
*	southhemi - True if the point is in the southern hemisphere;
*               false otherwise.
* 输入：
*    x-点的东移，以米为单位。
*    y-点的北，以米为单位。
*    zone-点所在的UTM区域。
*    southhemi-如果该点在南半球，则为true；否则为true。
*    否则为false。
* Outputs:
*	latlon - A 2-element array containing the latitude and
*            longitude of the point, in radians.
*
* Returns:
*	The function does not return a value.
*
*/
void UTMXYToLatLon (double x, double y, int zone, bool southhemi, WGS84Corr &latlon)
{
	double cmeridian;

	x -= 500000.0;
	x /= UTMScaleFactor;

	/* If in southern hemisphere, adjust y accordingly. */
	if (southhemi)
		y -= 10000000.0;

	y /= UTMScaleFactor;

	cmeridian = UTMCentralMeridian (zone);
	MapXYToLatLon (x, y, cmeridian, latlon);
}

#endif //__COORCONV_H__

