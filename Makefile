# predefined constant values

!IFDEF CONFIG_OPT
!INCLUDE $(CONFIG_OPT)
!ELSE
!IF EXIST(config.opt)
!INCLUDE config.opt 
!ENDIF
!ENDIF

!IFNDEF WIN64
!IF [cl 2>&1|find "x64" >NUL ] == 0
WIN64=YES
!ENDIF
!ENDIF

# check prerequisites


# identify compiler version
!IFNDEF MSVC_VER
!IF "$(_NMAKE_VER)" == "6.00.8168.0"
MSVC_VER = 1200
CMAKE_GENERATOR = "Visual Studio 6"
CMAKE_BUILDDIR = vc6
!ELSEIF "$(_NMAKE_VER)" == "7.00.9466"
MSVC_VER = 1300
CMAKE_GENERATOR = "Visual Studio 7"
CMAKE_BUILDDIR = vc7
!ELSEIF "$(_NMAKE_VER)" == "7.10.3077"
MSVC_VER = 1310
CMAKE_GENERATOR = "Visual Studio 7 .NET 2003"
CMAKE_BUILDDIR = vc71
!ELSEIF "$(_NMAKE_VER)" == "8.00.50727.42"
MSVC_VER = 1400
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 8 2005 Win64"
CMAKE_BUILDDIR = vc8x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 8 2005"
CMAKE_BUILDDIR = vc8
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "8.00.50727.762"
MSVC_VER = 1400
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 8 2005 Win64"
CMAKE_BUILDDIR = vc8x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 8 2005"
CMAKE_BUILDDIR = vc8
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "9.00.21022.08"
MSVC_VER = 1500
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 9 2008 Win64"
CMAKE_BUILDDIR = vc9x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 9 2008"
CMAKE_BUILDDIR = vc9
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "9.00.30729.01"
MSVC_VER = 1500
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 9 2008 Win64"
CMAKE_BUILDDIR = vc9x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 9 2008"
CMAKE_BUILDDIR = vc9
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "10.00.30128.01"
MSVC_VER = 1600
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 10 Win64"
CMAKE_BUILDDIR = vc10x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 10"
CMAKE_BUILDDIR = vc10
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "10.00.30319.01"
MSVC_VER = 1600
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 10 Win64"
CMAKE_BUILDDIR = vc10x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 10"
CMAKE_BUILDDIR = vc10
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "11.00.50727.1"
MSVC_VER = 1700
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 11 Win64"
CMAKE_BUILDDIR = vc11x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 11"
CMAKE_BUILDDIR = vc11
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "11.00.61030.0"
MSVC_VER = 1700
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 11 Win64"
CMAKE_BUILDDIR = vc11x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 11"
CMAKE_BUILDDIR = vc11
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "12.00.21005.1"
MSVC_VER = 1800
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 12 Win64"
CMAKE_BUILDDIR = vc12x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 12"
CMAKE_BUILDDIR = vc12
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.00.23026.0"
MSVC_VER = 1900
MESON_BACKEND = vs2015
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 14 Win64"
CMAKE_BUILDDIR = vc14x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 14"
CMAKE_BUILDDIR = vc14
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.00.23506.0"
MSVC_VER = 1900
MESON_BACKEND = vs2015
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 14 Win64"
CMAKE_BUILDDIR = vc14x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 14"
CMAKE_BUILDDIR = vc14
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.00.24210.0"
MSVC_VER = 1900
MESON_BACKEND = vs2015
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 14 Win64"
CMAKE_BUILDDIR = vc14x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 14"
CMAKE_BUILDDIR = vc14
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.11.25507.1"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.10.25019.0"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 2017 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15 2017"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.15.26726.0"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 2017 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15 2017"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.16.27034.0"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 2017 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15 2017"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.16.27041.0"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 2017 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15 2017"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.16.27043.0"
MSVC_VER = 1911
MESON_BACKEND = vs2017
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 15 2017 Win64"
CMAKE_BUILDDIR = vc15x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 15 2017"
CMAKE_BUILDDIR = vc15
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.22.27905.0"
MSVC_VER = 1922
MESON_BACKEND = vs2019
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 16 2019" -A x64
CMAKE_BUILDDIR = vc16x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 16 2019" -A Win32
CMAKE_BUILDDIR = vc16
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.26.28806.0"
MSVC_VER = 1922
MESON_BACKEND = vs2019
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 16 2019" -A x64
CMAKE_BUILDDIR = vc16x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 16 2019" -A Win32
CMAKE_BUILDDIR = vc16
!ENDIF
!ELSEIF "$(_NMAKE_VER)" == "14.27.29112.0"
MSVC_VER = 1922
MESON_BACKEND = vs2019
!IFDEF WIN64
CMAKE_GENERATOR = "Visual Studio 16 2019" -A x64
CMAKE_BUILDDIR = vc16x64
!ELSE
CMAKE_GENERATOR = "Visual Studio 16 2019" -A Win32
CMAKE_BUILDDIR = vc16
!ENDIF
!ELSE
!ERROR This compiler version $(_NMAKE_VER) is not supported or must be enumerated in the makefile
!ENDIF
!ENDIF

!IF $(MSVC_VER) >= 1911
!IFDEF WIN64
SETARGV = "$(VCTOOLSINSTALLDIR)lib\x64\setargv.obj"
!ELSE
SETARGV = "$(VCTOOLSINSTALLDIR)lib\x86\setargv.obj"
!ENDIF
!ELSE
!IF $(MSVC_VER) == 1310
VCDIR=$(VCINSTALLDIR)\vc7
!ELSE
VCDIR=$(VCINSTALLDIR)
!ENDIF

!IFDEF WIN64
SETARGV = "$(VCDIR)\lib\amd64\setargv.obj"
!ELSE
SETARGV = "$(VCDIR)\lib\setargv.obj"
!ENDIF
!ENDIF

!IF $(MSVC_VER) <= 1900
# last version that supports VS2015
POPPLER_BRANCH = poppler-0.76.0
POPPLER_MINOR_VERSION = 76
!ENDIF

!IFNDEF SERVER_URL
SERVER_URL=http://www.gisinternals.com/sdk
!ENDIF

!IFDEF GDAL_MRSID
!IFDEF MRSID_SDK
!IF EXIST("detect_mrsid.opt")
!INCLUDE detect_mrsid.opt
!ENDIF
!ENDIF
!ENDIF

!IFDEF WIN64
FILEGDB_BINPATH = $(FILEGDB_API_DIR)\bin64
!ELSE
FILEGDB_BINPATH = $(FILEGDB_API_DIR)\bin
!ENDIF

!IFNDEF GDALTEST_SCRIPT
GDALTEST_SCRIPT =run_all.py
!ENDIF

!IFNDEF SWIG_VER
SWIG_VER = 1.3.39
!ENDIF

SWIG_SRC = https://sourceforge.net/projects/swig/files/swigwin/swigwin-$(SWIG_VER)/swigwin-$(SWIG_VER).zip/download
SWIG_DIR = $(SRC_DIR)\swig
SWIG_EXE = $(BASE_DIR)\$(SWIG_DIR)\swigwin-$(SWIG_VER)\swig.exe

!IFNDEF CYGWIN_DIR
CYGWIN_DIR=E:\cygwin
!ENDIF

GDAL_DIR = $(GDAL_DIR)-$(CMAKE_BUILDDIR)

!IFNDEF MS_REVISION
MS_REVISION=HEAD
!ENDIF

!IFNDEF GDAL_REVISION
GDAL_REVISION=HEAD
!ENDIF

!IFNDEF MAPMANAGER_REVISION
MAPMANAGER_REVISION=HEAD
!ENDIF

#specify build targets
MSVCRT_DLL = $(OUTPUT_DIR)\build\msvcr.install
SWIG_INSTALL = $(OUTPUT_DIR)\build\swigwin-$(SWIG_VER).install
ZLIB_LIB = $(OUTPUT_DIR)\lib\zlib.lib
OPENSSL_LIB = $(OUTPUT_DIR)\lib\libssl.lib
CURL_LIB = $(OUTPUT_DIR)\lib\libcurl_imp.lib
CURL_EXE = $(OUTPUT_DIR)\bin\curl.exe
CURL_CA_BUNDLE = $(OUTPUT_DIR)\bin\curl-ca-bundle.crt
LIBPNG_LIB = $(OUTPUT_DIR)\lib\libpng16_static.lib
JPEG_LIB = $(OUTPUT_DIR)\lib\libjpeg.lib
FREETYPE_LIB = $(OUTPUT_DIR)\lib\freetype.lib
HARFBUZZ_LIB = $(OUTPUT_DIR)\lib\harfbuzz.lib
FREETYPE_1 = $(OUTPUT_DIR)\build\freetype_1.install
FREETYPE_2 = $(OUTPUT_DIR)\build\freetype_2.install
GEOS_LIB = $(OUTPUT_DIR)\lib\geos_c.lib
FRIBIDI_LIB = $(OUTPUT_DIR)\lib\fribidi.lib
LIBICONV_LIB = $(OUTPUT_DIR)\lib\iconv.lib
PGSQL_LIB = $(OUTPUT_DIR)\lib\libpq.lib
PROJ4_LIB = $(OUTPUT_DIR)\lib\proj_4_9.lib
PROJ6_LIB = $(OUTPUT_DIR)\lib\proj_6_2.lib
PROJ7_LIB = $(OUTPUT_DIR)\lib\proj.lib
SQLITE_LIB = $(OUTPUT_DIR)\lib\sqlite3.lib
SPATIALITE_LIB = $(OUTPUT_DIR)\lib\spatialite_i.lib
FREEXL_LIB = $(OUTPUT_DIR)\lib\freexl.lib
LIBRTTOPO_LIB = $(OUTPUT_DIR)\lib\librttopo.lib
LIBXML2_LIB = $(OUTPUT_DIR)\lib\libxml2.lib
XERCES_LIB = $(OUTPUT_DIR)\lib\xerces-c_3.lib
LIBEXPAT_LIB = $(OUTPUT_DIR)\lib\libexpat.lib
PROTOBUF_LIB = $(OUTPUT_DIR)\lib\libprotobuf.lib
PROTOBUF_C_LIB = $(OUTPUT_DIR)\lib\protobuf-c.lib
GDAL_LIB = $(OUTPUT_DIR)\lib\gdal_i.lib
GDAL_VERSION = $(OUTPUT_DIR)\doc\gdal_version.txt
GDAL_VERSION_H = $(BASE_DIR)\$(GDAL_DIR)\gdal\gcore\gdal_version.h
GDAL_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal.opt
GDAL_CSHARP_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_csharp.opt
GDAL_PYTHON_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_python.opt
!IFDEF GDAL_CSHARP_DLL_NAME
GDAL_CSHARP_DLL = $(OUTPUT_DIR)\bin\gdal\csharp\$(GDAL_CSHARP_DLL_NAME)
!ELSE
GDAL_CSHARP_DLL = $(OUTPUT_DIR)\bin\gdal\csharp\gdal_csharp.dll
!ENDIF
GDAL_JAVA_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_java.opt
!IFDEF GDAL_JAVA_DLL_NAME
GDAL_JAVA_DLL = $(OUTPUT_DIR)\bin\gdal\java\$(GDAL_CSHARP_DLL_NAME)
!ELSE
GDAL_JAVA_DLL = $(OUTPUT_DIR)\bin\gdal\java\gdalalljni.dll
!ENDIF
GDAL_MSSQL_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_mssql.opt
GDAL_MSSQL_DLL = $(OUTPUT_DIR)\bin\gdal\plugins-optional\ogr_MSSQLSpatial.dll
GDAL_MSSQL_MSODBC_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_mssql_msodbc.opt
GDAL_MSSQL_MSODBC_DLL = $(OUTPUT_DIR)\bin\gdal\plugins-optional\msodbc\ogr_MSSQLSpatial.dll
GDAL_ECW_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_ecw.opt
GDAL_ECW_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_ECW_JP2ECW.dll
GDAL_FILEGDB_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_filegdb.opt
GDAL_FILEGDB_DLL = $(OUTPUT_DIR)\bin\gdal\plugins-external\ogr_FileGDB.dll
GDAL_HDF4_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_hdf4.opt
GDAL_HDF4_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_HDF4.dll
GDAL_HDF5_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_hdf5.opt
GDAL_HDF5_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_HDF5.dll
GDAL_KEA_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_kea.opt
GDAL_KEA_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_KEA.dll
GDAL_AMIGOCLOUD_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_amigocloud.opt
GDAL_AMIGOCLOUD_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\ogr_AmigoCloud.dll
GDAL_NETCDF_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_netcdf.opt
GDAL_NETCDF_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_netCDF.dll
GDAL_FITS_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_fits.opt
GDAL_FITS_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_FITS.dll
GDAL_PG_DLL = $(OUTPUT_DIR)\bin\gdal\plugins-optional\ogr_PG.dll
GDAL_OCI_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_oci.opt
GDAL_OCI_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\ogr_OCI.dll
GDAL_GEOR_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_GEOR.dll
GDAL_PDF_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_pdf.opt
GDAL_PDF_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_PDF.dll
GDAL_MRSID_OPT = $(OUTPUT_DIR)\build\$(GDAL_OPT_PREFIX)gdal_mrsid.opt
GDAL_MRSID_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_MrSID.dll
GDAL_MRSID_LIDAR_DLL = $(OUTPUT_DIR)\bin\gdal\plugins\gdal_MG4Lidar.dll
MAPSERVER_LIB = $(OUTPUT_DIR)\lib\mapserver.lib
SZIP_LIB = $(OUTPUT_DIR)\lib\szip.lib
HDF4_LIB = $(OUTPUT_DIR)\lib\hdf.lib $(OUTPUT_DIR)\lib\mfhdf.lib
CAIRO_LIB = $(OUTPUT_DIR)\lib\cairo.lib
PIXMAN_LIB = $(OUTPUT_DIR)\lib\pixman-1.lib
FONTCONFIG_LIB = $(OUTPUT_DIR)\lib\fontconfig.lib
URIPARSER_LIB = $(OUTPUT_DIR)\lib\uriparser.lib
LIBSVG_LIB = $(OUTPUT_DIR)\lib\libsvg.lib
LIBSVGCAIRO_LIB = $(OUTPUT_DIR)\lib\libsvg-cairo.lib
LIBTIFF_LIB = $(OUTPUT_DIR)\lib\tiff.lib
OPENJPEG_LIB = $(OUTPUT_DIR)\lib\openjp2.lib
POPPLER_LIB = $(OUTPUT_DIR)\lib\poppler.lib
FCGI_LIB = $(OUTPUT_DIR)\lib\libfcgi.lib
GIF_LIB = $(OUTPUT_DIR)\lib\giflib.lib
LIBKML_LIBS = $(OUTPUT_DIR)\lib\kmlbase.lib $(OUTPUT_DIR)\lib\kmlconvenience.lib $(OUTPUT_DIR)\lib\kmldom.lib $(OUTPUT_DIR)\lib\kmlengine.lib $(OUTPUT_DIR)\lib\kmlregionator.lib $(OUTPUT_DIR)\lib\kmlxsd.lib
MINIZIP_LIB = $(OUTPUT_DIR)\lib\minizip.lib
MYSQL_LIB = $(OUTPUT_DIR)\lib\libmysql.lib
HDF5_LIB = $(OUTPUT_DIR)\lib\libhdf5.lib $(OUTPUT_DIR)\lib\libhdf5_cpp.lib
KEA_LIB = $(OUTPUT_DIR)\lib\libkea.lib
NETCDF_LIB = $(OUTPUT_DIR)\lib\netcdf.lib
FITS_LIB = $(OUTPUT_DIR)\lib\cfitsio.lib
BOOST_HEADERS = $(OUTPUT_DIR)\include\boost\version.hpp
OGDI_LIB = $(OUTPUT_DIR)\lib\ogdi.lib
ECW_DLL = $(OUTPUT_DIR)\bin\NCSEcw.dll
FILEGDBAPI_DLL = $(OUTPUT_DIR)\bin\FileGDBAPI.dll 

#installers
GDAL_INSTALLER_CORE = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-core.msi
GDAL_INSTALLER_ORACLE = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-oracle.msi
GDAL_INSTALLER_ECW = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-ecw-$(ECWSDK_VERSION).msi
GDAL_INSTALLER_MRSID = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-mrsid.msi
GDAL_INSTALLER_FILEGDB = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-filegdb.msi
GDAL_INSTALLER_NETCDF = $(OUTPUT_DIR)\install\gdal-$(GDAL_VERSIONTAG)-$(COMPILER_VER)-netcdf.msi
MS_INSTALLER_CORE = $(OUTPUT_DIR)\install\mapserver-$(MS_VERSION)-$(COMPILER_VER)-core.msi
MAPMANAGER_INSTALLER = $(BASE_DIR)\MapManager-$(MS_VERSION)\Installer\bin\Release\MapManager.msi

# set default targets (mapserver and the gdal plugins)
DEFAULT_TARGETS = 

# set up gdal configuration
GDAL_DEPS = $(OUTPUT_DIR) $(MSVCRT_DLL)

!IFDEF GDAL_GEOS
GDAL_DEPS = $(GDAL_DEPS) $(GEOS_LIB)
!ENDIF

!IFDEF GDAL_POSTGIS
GDAL_DEPS = $(GDAL_DEPS) $(PGSQL_LIB)
!ENDIF

!IFDEF GDAL_PROJ4
GDAL_DEPS = $(GDAL_DEPS) $(PROJ4_LIB)
!ENDIF

!IFDEF GDAL_PROJ6
GDAL_DEPS = $(GDAL_DEPS) $(PROJ6_LIB)
!ENDIF

!IFDEF GDAL_PROJ7
GDAL_DEPS = $(GDAL_DEPS) $(PROJ7_LIB)
!ENDIF

!IFDEF GDAL_CURL
GDAL_DEPS = $(GDAL_DEPS) $(CURL_LIB)
!ENDIF

!IFDEF GDAL_SPATIALITE
GDAL_DEPS = $(GDAL_DEPS) $(SPATIALITE_LIB)
!ENDIF

!IFDEF GDAL_CSHARP
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_CSHARP_DLL)
!ENDIF

!IFDEF GDAL_XERCES
GDAL_DEPS = $(GDAL_DEPS) $(XERCES_LIB)
!ENDIF

!IFDEF GDAL_EXPAT
GDAL_DEPS = $(GDAL_DEPS) $(LIBEXPAT_LIB)
!ENDIF

!IFDEF GDAL_MYSQL
GDAL_DEPS = $(GDAL_DEPS) $(MYSQL_LIB)
!ENDIF

!IFDEF GDAL_OPENJPEG
GDAL_DEPS = $(GDAL_DEPS) $(OPENJPEG_LIB)
!ENDIF

#!IFDEF GDAL_PDF
#GDAL_DEPS = $(GDAL_DEPS) $(POPPLER_LIB)
#!ENDIF

!IFDEF GDAL_LIBKML
GDAL_DEPS = $(GDAL_DEPS) $(LIBKML_LIBS)
!ENDIF

!IFDEF GDAL_HDF4
GDAL_DEPS = $(GDAL_DEPS) $(HDF4_LIB)
!ENDIF

!IFDEF GDAL_HDF5
GDAL_DEPS = $(GDAL_DEPS) $(HDF5_LIB)
!ENDIF

!IFDEF GDAL_FITS
GDAL_DEPS = $(GDAL_DEPS) $(FITS_LIB)
!ENDIF

!IFDEF GDAL_KEA
GDAL_DEPS = $(GDAL_DEPS) $(KEA_LIB)
!ENDIF

!IFDEF GDAL_NETCDF
GDAL_DEPS = $(GDAL_DEPS) $(NETCDF_LIB)
!ENDIF

!IFDEF GDAL_OGDI
GDAL_DEPS = $(GDAL_DEPS) $(OGDI_LIB)
!ENDIF

!IFDEF GDAL_ECW
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_ECW_DLL)
!ENDIF

!IFDEF GDAL_FILEGDB
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_FILEGDB_DLL)
!ENDIF

!IFDEF GDAL_MRSID
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_MRSID_DLL) $(GDAL_MRSID_LIDAR_DLL)
!ENDIF

!IFDEF GDAL_MSSQL
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_MSSQL_DLL)
!ENDIF

!IFDEF GDAL_MSSQL_MSODBC
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_MSSQL_MSODBC_DLL)
!ENDIF

!IFDEF GDAL_HDF4
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_HDF4_DLL)
!ENDIF

!IFDEF GDAL_HDF5
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_HDF5_DLL)
!ENDIF

!IFDEF GDAL_KEA
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_KEA_DLL)
!ENDIF

!IFDEF GDAL_AMIGOCLOUD
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_AMIGOCLOUD_DLL)
!ENDIF

!IFDEF GDAL_NETCDF
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_NETCDF_DLL)
!ENDIF

!IFDEF GDAL_FITS
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_FITS_DLL)
!ENDIF

!IFDEF GDAL_PDF
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_PDF_DLL)
!ENDIF

!IFDEF GDAL_POSTGIS
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_PG_DLL)
!ENDIF

!IFDEF GDAL_ORACLE
DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(GDAL_OCI_DLL) $(GDAL_GEOR_DLL)
!ENDIF

# set up mapserver configuration
MAPSERVER_OPT = -DWITH_THREAD_SAFETY=1 -DREGEX_DIR=$(REGEX_PATH:\=/) -DCMAKE_SYSTEM_VERSION=$(PLATFORMSDK_VERSION) "-DMS_EXTERNAL_LIBS=$(HARFBUZZ_LIB:\=/);$(URIPARSER_LIB:\=/)" "-DPNG_LIBRARY=$(LIBPNG_LIB:\=/)"
MAPSERVER_DEPS = $(MSVCRT_DLL) $(JPEG_LIB) $(LIBPNG_LIB) $(FREETYPE_2)

!IFNDEF MS_POSTGIS
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_POSTGIS=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(PGSQL_LIB)
!ENDIF

!IFNDEF MS_PROTOBUFC
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_PROTOBUFC=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_PROTOBUFC=1 "-DPROTOBUFC_COMPILER=$(OUTPUT_DIR:\=/)/bin/protoc.exe" "-DPROTOBUFC_INCLUDE_DIR=$(OUTPUT_DIR:\=/)/include/protobuf-c"
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(PROTOBUF_C_LIB)
!ENDIF

!IFNDEF MS_PROJ
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_PROJ=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(PROJ4_LIB)
!ENDIF

!IFNDEF MS_GEOS
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_GEOS=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(PROJ4_LIB)
!ENDIF

!IFNDEF MS_ICONV
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_ICONV=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) "-DICONV_DLL=$(OUTPUT_DIR:\=/)/bin/iconv.dll"
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(LIBICONV_LIB)
!ENDIF

!IFNDEF MS_CAIRO
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CAIRO=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(CAIRO_LIB)
!ENDIF

!IFNDEF MS_SVG_CAIRO
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_SVGCAIRO=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_SVGCAIRO=1 "-DSVG_LIBRARY=$(LIBSVG_LIB:\=/)" "-DSVGCAIRO_LIBRARY=$(LIBSVGCAIRO_LIB:\=/)"
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(LIBSVG_LIB) $(LIBSVGCAIRO_LIB) $(URIPARSER_LIB)
!ENDIF

!IFNDEF MS_CURL
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CURL=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CURL=1 -DWITH_CLIENT_WMS=1 -DWITH_CLIENT_WFS=1
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(CURL_LIB)
!ENDIF

!IFNDEF MS_FCGI
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_FCGI=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(FCGI_LIB)
!ENDIF

!IFNDEF MS_GIFLIB
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_GIF=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(GIF_LIB)
!ENDIF

!IFNDEF MS_LIBXML2
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_LIBXML2=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(LIBXML2_LIB)
!ENDIF

!IFNDEF MS_WMS_SVR
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_WMS=0
!ENDIF

!IFNDEF MS_WFS_SVR
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_WFS=0
!ENDIF

!IFNDEF MS_SOS_SVR
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_SOS=0
!ENDIF

!IFNDEF MS_WCS_SVR
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_WCS=0
!ENDIF

!IFNDEF MS_WMS_CLIENT
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CLIENT_WMS=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CLIENT_WMS=1
!ENDIF

!IFNDEF MS_WFS_CLIENT
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CLIENT_WFS=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CLIENT_WFS=1
!ENDIF

!IFNDEF MS_HARFBUZZ
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_HARFBUZZ=0
!ELSE
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_HARFBUZZ=1 "-DHARFBUZZ_INCLUDE_DIR=$(OUTPUT_DIR:\=/)/include/harfbuzz"
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(HARFBUZZ_LIB)
!ENDIF

!IFNDEF MS_FRIBIDI
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_FRIBIDI=0
!ELSE
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(FRIBIDI_LIB)
!ENDIF

!IFDEF MS_CSHARP
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_CSHARP=1 "-DSWIG_EXECUTABLE=$(SWIG_EXE)"
MAPSERVER_DEPS = $(MAPSERVER_DEPS) $(SWIG_INSTALL)
!ENDIF

!IFNDEF MS_GDAL
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_GDAL=0
MAPSERVER_DEPS_ALL = $(MAPSERVER_DEPS)
!ELSE
MAPSERVER_DEPS_ALL = $(MAPSERVER_DEPS) $(GDAL_LIB)
!ENDIF

!IFDEF MS_MSSQL
MAPSERVER_OPT = $(MAPSERVER_OPT) -DWITH_MSSQL2008=1
!ENDIF

DEFAULT_TARGETS = $(DEFAULT_TARGETS) $(MAPSERVER_LIB)

MS_EXTRAFLAGS_CC = -D_WIN32_WINNT=0x0601

# Update enabled flags
MSVCR_ENABLED = 1
GDAL_ENABLED = 1
GDAL_CSHARP_ENABLED = 1
MAPSERVER_ENABLED = 1

!IFDEF ENABLE_DEPENDENCIES
ZLIB_ENABLED = 1
OPENSSL_ENABLED = 1
CURL_ENABLED = 1
LIBPNG_ENABLED = 1
JPEG_ENABLED = 1
FREETYPE_ENABLED = 1
HARFBUZZ_ENABLED = 1
GEOS_ENABLED = 1
FRIBIDI_ENABLED = 1
LIBICONV_ENABLED = 1
PGSQL_ENABLED = 1
PROJ4_ENABLED = 1
PROJ6_ENABLED = 1
PROJ7_ENABLED = 1
SQLITE_ENABLED = 1
SPATIALITE_ENABLED = 1
FREEXL_ENABLED = 1
LIBRTTOPO_ENABLED = 1
LIBXML2_ENABLED = 1
XERCES_ENABLED = 1
LIBEXPAT_ENABLED = 1
PROTOBUF_ENABLED = 1
PROTOBUF_C_ENABLED = 1
SZIP_ENABLED = 1
HDF4_ENABLED = 1
PIXMAN_ENABLED = 1
CAIRO_ENABLED = 1
FONTCONFIG_ENABLED = 1
URIPARSER_ENABLED = 1
LIBSVG_ENABLED = 1
LIBSVGCAIRO_ENABLED = 1
LIBTIFF_ENABLED = 1
OPENJPEG_ENABLED = 1
POPPLER_ENABLED = 1
FCGI_ENABLED = 1
GIF_ENABLED = 1
MINIZIP_ENABLED = 1
LIBKML_ENABLED = 1
MYSQL_ENABLED = 1
HDF5_ENABLED = 1
KEA_ENABLED = 1
FITS_ENABLED = 1
BOOST_ENABLED = 1
OGDI_ENABLED = 1
!ENDIF

# ECW SDK locations
!IFDEF ECWSDK_DIR
ECWFLAGS= /DECWSDK_VERSION=$(ECWSDK_VERSION) "-I$(ECWSDK_DIR)\include" "-I$(ECWSDK_DIR)\include\NCSECW\api" "-I$(ECWSDK_DIR)\include\NCSECW\jp2" "-I$(ECWSDK_DIR)\include\NCSECW\ecw"
!IF $(MSVC_VER) >= 1911
!IFDEF WIN64
ECWLIB = "$(ECWSDK_DIR)\lib\vc141\x64\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc141\x64\NCSEcw.dll"
!ELSE
ECWLIB = "$(ECWSDK_DIR)\lib\vc141\win32\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc141\win32\NCSEcw.dll"
!ENDIF
!ELSEIF $(MSVC_VER) == 1900
!IFDEF WIN64
ECWLIB = "$(ECWSDK_DIR)\lib\vc140\x64\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc140\x64\NCSEcw.dll"
!ELSE
ECWLIB = "$(ECWSDK_DIR)\lib\vc140\win32\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc140\win32\NCSEcw.dll"
!ENDIF
!ELSEIF $(MSVC_VER) == 1900
!IFDEF WIN64
ECWLIB = "$(ECWSDK_DIR)\lib\vc120\x64\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc120\x64\NCSEcw.dll"
!ELSE
ECWLIB = "$(ECWSDK_DIR)\lib\vc120\win32\NCSEcw.lib"
ECWDLL = "$(ECWSDK_DIR)\bin\vc120\win32\NCSEcw.dll"
!ENDIF
!ENDIF
!ENDIF

!IFDEF FILEGDB_API_DIR
!IFDEF WIN64
FILEGDB_LIB = "$(FILEGDB_API_DIR)\lib64\FileGDBAPI.lib"
FILEGDB_DLL = "$(FILEGDB_API_DIR)\bin64\FileGDBAPI.dll"
!ELSE
FILEGDB_LIB = "$(FILEGDB_API_DIR)\lib\FileGDBAPI.lib"
FILEGDB_DLL = "$(FILEGDB_API_DIR)\bin\FileGDBAPI.dll"
!ENDIF
!ENDIF

!IFDEF OCI_DIR
!IF $(MSVC_VER) == 1900
!IFDEF WIN64
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_12_2-x64
!ELSE
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_12_2
!ENDIF
OCI_VERSION = 12
!ELSEIF $(MSVC_VER) >= 1600
!IFDEF WIN64
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_12_1-x64
!ELSE
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_12_1
!ENDIF
OCI_VERSION = 12
!ELSE
!IFDEF WIN64
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_11_1_7_0-x64
!ELSE
INSTANTCLIENT_DIR = $(OCI_DIR)\instantclient_11_1_7_0
!ENDIF
OCI_VERSION = 11
!ENDIF
MS_CMAKE_ORACLE=-DWITH_ORACLE_PLUGIN=1 "-DORACLE_INCLUDE_DIR=$(INSTANTCLIENT_DIR:\=/)/sdk/include"
!ENDIF


!IFDEF DEBUG
BUILD_CONFIG=RelWithDebInfo
MAPSERVER_OPT = $(MAPSERVER_OPT) "-DCMAKE_CXX_FLAGS_RELWITHDEBINFO=/MD /Zi /Od" "-DCMAKE_C_FLAGS_RELWITHDEBINFO=/MD /Zi /Od $(MS_EXTRAFLAGS_CC)"
!ELSE
BUILD_CONFIG=Release
!IFDEF MS_RELEASE_PDB
MAPSERVER_OPT = $(MAPSERVER_OPT) "-DCMAKE_CXX_FLAGS_RELEASE=/MD /Zi /O2 $(MS_EXTRAFLAGS_CC)" "-DCMAKE_C_FLAGS_RELEASE=/MD /Zi /O2 $(MS_EXTRAFLAGS_CC)" "-DCMAKE_MODULE_LINKER_FLAGS_RELEASE=/OPT:REF /OPT:ICF /DEBUG /INCREMENTAL:NO" "-DCMAKE_SHARED_LINKER_FLAGS_RELEASE=/OPT:REF /OPT:ICF /DEBUG /INCREMENTAL:NO" "-DCMAKE_EXE_LINKER_FLAGS_RELEASE=/OPT:REF /OPT:ICF /DEBUG /INCREMENTAL:NO"
!ELSE

!ENDIF
!ENDIF

!IFDEF WIN64
MS_PROJECT_CONFIG = "$(BUILD_CONFIG)|x64"
!ELSE
MS_PROJECT_CONFIG = "$(BUILD_CONFIG)|Win32"
!ENDIF

# directory layout
!IFNDEF BASE_DIR
BASE_DIR = $(MAKEDIR)
!ENDIF

!IFNDEF CMAKE_DIR
CMAKE_DIR = $(BASE_DIR)\cmake
!ENDIF

#finding cmake.exe
!IF EXIST($(CMAKE_DIR)\bin\cmake.exe)
CMAKE_EXE = $(CMAKE_DIR)\bin\cmake.exe
!ELSE
!IF [echo off && for /f "usebackq tokens=*" %i IN (`where cmake.exe`) DO echo found cmake in %i] == 0
CMAKE_EXE = cmake.exe
!ELSE
!ERROR cmake.exe not found. Please install cmake into $(CMAKE_DIR) or make it available in the PATH environment variable!
!ENDIF
!ENDIF


#finding filegdb SDK
!IFDEF GDAL_FILEGDB
!IF !EXIST($(FILEGDB_LIB))
!ERROR Unable to find $(FILEGDB_LIB). Set FILEGDB_API_DIR in $(CONFIG_OPT) to the location of the FileGDB SDK
!ENDIF
!ENDIF

#finding ECW SDK
!IFDEF GDAL_ECW
!IF !EXIST($(ECWLIB))
!ERROR Unable to find $(ECWLIB). Set ECWSDK_DIR in $(CONFIG_OPT) to the location of the ECW SDK and ECWSDK_VERSION to the current version
!ENDIF
!ENDIF

#finding ninja.exe
!IF DEFINED(MS_FRIBIDI) && DEFINED(FRIBIDI_ENABLED)
!IF [echo off && for /f "usebackq tokens=*" %i IN (`where ninja.exe`) DO echo found ninja in %i] == 0
NINJA_EXE = ninja.exe
!ELSE
!ERROR ninja.exe not found. Please install ninja and make it available in the PATH environment variable!
!ENDIF
!ENDIF

#finding 7z.exe
!IF [echo off && for /f "usebackq tokens=*" %i IN (`where 7z.exe`) DO echo found 7zip in %i] == 0
7Z_EXE = 7z.exe
!ELSE
!ERROR 7z.exe not found. Please install 7zip and make it available in the PATH environment variable!
!ENDIF

#finding tclsh.exe
!IF DEFINED(GDAL_SQLITE) && DEFINED(SQLITE_ENABLED)
!IF [echo off && for /f "usebackq tokens=*" %i IN (`where tclsh.exe`) DO echo found tclsh in %i] == 0
TCLSH_EXE = tclsh.exe
!ELSE
!ERROR tclsh.exe not found. Please install TCL and make it available in the PATH environment variable!
!ENDIF
!ENDIF

# python
!IFNDEF PYTHON_BASE
PYTHON_BASE=E:\builds
!ENDIF

!IFNDEF PYTHON_DIR
!IFDEF WIN64
PYTHON_DIR = Python36-AMD64
!ELSE
PYTHON_DIR = Python36
!ENDIF
!IF $(MSVC_VER) == 1310
PYTHON_DIR = Python27
!ENDIF
!ENDIF

!IF "$(PYTHON_DIR)" == "Python25"
PYTHON_OUTDIR = python\build\lib.win32-2.5
PYTHON_BDIST_OPTS = --formats=wininst
!ELSEIF "$(PYTHON_DIR)" == "Python26"
PYTHON_OUTDIR = python\build\lib.win32-2.6
PYTHON_BDIST_OPTS = --formats=wininst
!ELSEIF "$(PYTHON_DIR)" == "Python26-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-2.6
PYTHON_BDIST_OPTS = --formats=wininst
!ELSEIF "$(PYTHON_DIR)" == "Python27"
PYTHON_OUTDIR = python\build\lib.win32-2.7
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python27-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-2.7
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python31"
PYTHON_OUTDIR = python\build\lib.win32-3.1
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python31-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.1
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python32"
PYTHON_OUTDIR = python\build\lib.win32-3.2
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python32-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.2
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python33"
PYTHON_OUTDIR = python\build\lib.win32-3.3
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python33-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.3
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python34"
PYTHON_OUTDIR = python\build\lib.win32-3.4
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python34-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.4
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python35"
PYTHON_OUTDIR = python\build\lib.win32-3.5
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python35-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.5
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python36"
PYTHON_OUTDIR = python\build\lib.win32-3.6
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python36-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.6
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python37"
PYTHON_OUTDIR = python\build\lib.win32-3.7
PYTHON_BDIST_OPTS = --formats=msi
!ELSEIF "$(PYTHON_DIR)" == "Python37-AMD64"
PYTHON_OUTDIR = python\build\lib.win-amd64-3.7
PYTHON_BDIST_OPTS = --formats=msi
!ENDIF


!IFNDEF JAVA_HOME
!IFDEF WIN64
JAVA_HOME = C:\Java\jdk1.8.0_191x64
!ELSE
JAVA_HOME = C:\Java\jdk1.8.0_191
!ENDIF
!ENDIF

!IFNDEF ANT_HOME
ANT_HOME = C:\Programs\apache-ant-1.7.0
!ENDIF

!IFNDEF WIX_DIR
WIX_DIR = wix
!ENDIF

!IFNDEF PHPSDK_DIR
PHPSDK_DIR = E:\php-sdk
!ENDIF

!IFNDEF SQLNCLI_VERSION
SQLNCLI_VERSION = 11
!ENDIF

!IFNDEF SQLNCLI_DIR
SQLNCLI_DIR = C:\Program Files (x86)\Microsoft SQL Server\$(SQLNCLI_VERSION)0\SDK
!ENDIF

!IFNDEF MSODBCSQL_VERSION
MSODBCSQL_VERSION = 17
!ENDIF

!IFNDEF MSODBCSQL_DIR
MSODBCSQL_DIR = C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\$(MSODBCSQL_VERSION)0\SDK
!ENDIF

!IFNDEF REGEX_DIR
REGEX_DIR = support\regex-0.12
!ENDIF

!IFNDEF REGEX_PATH
REGEX_PATH=$(BASE_DIR)\$(REGEX_DIR)
!ENDIF

!IFNDEF MS_PATH
MS_PATH = $(BASE_DIR)\$(MS_DIR)
!ENDIF

!IFNDEF PYDIR
PYDIR = $(PYTHON_BASE)\$(PYTHON_DIR)
!ENDIF

# dependent constants

!IFDEF WIN64
COMPILER_VER=$(MSVC_VER)-x64
!ELSE
COMPILER_VER=$(MSVC_VER)
!ENDIF

!IFNDEF OUTPUT_DIR
OUTPUT_DIR = $(BASE_DIR)\release-$(COMPILER_VER)
!ENDIF

EXTRAFLAGS =

default: $(OUTPUT_DIR) $(DEFAULT_TARGETS)

test: $(FCGI_LIB)

ms: $(MAPSERVER_LIB)

show-dependencies:
    @echo $(GDAL_DEPS) $(MAPSERVER_DEPS)
    @echo $(SETARGV)

dependencies: $(GDAL_DEPS) $(MAPSERVER_DEPS)
    @echo DEPENDENCY BUILD COMPLETE !!!!
    
package-dependencies: dependencies
    7z a -tzip -xr!release-$(COMPILER_VER)\bin\gdal* -xr!release-$(COMPILER_VER)\bin\ms -x!release-$(COMPILER_VER)\bin\mapserver* -x!release-$(COMPILER_VER)\bin\*gdal* release-$(COMPILER_VER).zip -x!release-$(COMPILER_VER)\build\*.opt -x!release-$(COMPILER_VER)\doc\*.txt -x!release-$(COMPILER_VER)\lib\gdal_i.lib -x!release-$(COMPILER_VER)\lib\mapserver.lib -xr!release-$(COMPILER_VER)\include\mapserver -x!release-$(COMPILER_VER)\include\cpl*.h -x!release-$(COMPILER_VER)\include\gdal*.h -x!release-$(COMPILER_VER)\include\memdataset.h -x!release-$(COMPILER_VER)\include\ogr*.h -x!release-$(COMPILER_VER)\include\commonutils.h -x!release-$(COMPILER_VER)\include\epsg_*.inc  release-$(COMPILER_VER)

op-disable:
    @echo This operation is disabled!
    
gdal-clean:
    if exist $(GDAL_OPT) del $(GDAL_OPT)
    
libtiff: $(LIBTIFF_LIB)
    
install:
    @if not exist $(INSTALL_SCRIPT) echo Unable to find $(INSTALL_SCRIPT). The install script doesn't exists
    set ECWSDK_DIR=$(ECWSDK_DIR)
    set FILEGDB_API_DIR=$(FILEGDB_API_DIR)
    @if exist $(INSTALL_SCRIPT) cmd /C $(INSTALL_SCRIPT)

check:
    @cd $(BASE_DIR)\$(ZLIB_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo zlib - current: %%F built: $(ZLIB_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(OPENSSL_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo openssl - current: %%F built: $(OPENSSL_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(CURL_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo curl - current: %%F built: $(CURL_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(FREETYPE_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo freetype - current: %%F built: $(FREETYPE_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(HARFBUZZ_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo harfbuzz - current: %%F built: $(HARFBUZZ_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(FRIBIDI_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo fribidi - current: %%F built: $(FRIBIDI_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(GEOS_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo geos - current: %%F built: $(GEOS_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(PGSQL_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo pgsql - current: %%F built: $(PGSQL_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(PROJ4_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo proj4 - current: %%F built: $(PROJ4_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(LIBXML2_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libxml2 - current: %%F built: $(LIBXML2_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(LIBEXPAT_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(LIBEXPAT_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(PROTOBUF_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(PROTOBUF_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(PROTOBUF_C_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(PROTOBUF_C_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(URIPARSER_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(URIPARSER_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(LIBTIFF_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(LIBTIFF_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(OPENJPEG_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(OPENJPEG_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(POPPLER_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(POPPLER_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(FCGI_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(FCGI_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(LIBKML_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(LIBKML_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(MYSQL_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(MYSQL_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(HDF5_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(HDF5_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(KEA_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(KEA_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(NETCDF_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(NETCDF_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(OGDI_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(OGDI_BRANCH) & exit 0
    @cd $(BASE_DIR)\$(BOOST_DIR)
    @for /f "usebackq tokens=*" %%F in (`git ls-remote --tags --sort=-taggerdate`) do @echo libexpat - current: %%F built: $(BOOST_BRANCH) & exit 0

    @cd $(BASE_DIR)

gdal-clean:
!IFNDEF NO_CLEAN
	-del $(GDAL_OPT)
    -del $(GDAL_LIB)
!ENDIF

gdal: gdal-clean $(GDAL_LIB)   

$(OUTPUT_DIR):
    if exist $(OUTPUT_DIR).zip 7z x -y $(OUTPUT_DIR).zip
    if not exist $(OUTPUT_DIR) mkdir $(OUTPUT_DIR)
    if not exist $(OUTPUT_DIR)\include mkdir $(OUTPUT_DIR)\include
    if not exist $(OUTPUT_DIR)\bin mkdir $(OUTPUT_DIR)\bin
    if not exist $(OUTPUT_DIR)\lib mkdir $(OUTPUT_DIR)\lib
    if not exist $(OUTPUT_DIR)\doc mkdir $(OUTPUT_DIR)\doc
    if not exist $(OUTPUT_DIR)\install mkdir $(OUTPUT_DIR)\install
    if not exist $(OUTPUT_DIR)\build mkdir $(OUTPUT_DIR)\build
    
gdal-csharp: $(GDAL_CSHARP_DLL)

gdal-csharp-test: $(GDAL_CSHARP_DLL)	
!IFDEF GDAL_CSHARP
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(OUTPUT_DIR)\bin\gdal\csharp;$(PATH)
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj7\SHARE
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\csharp
	nmake /f makefile.vc test EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT)
	cd $(BASE_DIR)
!ENDIF

gdal-java: $(GDAL_JAVA_DLL)

gdal-java-test:	
!IFDEF GDAL_JAVA
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(OUTPUT_DIR)\bin\gdal\java;$(PATH)
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj\SHARE
    SET GDAL_DATA=$(OUTPUT_DIR)\bin\gdal-data
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\java
	nmake /f makefile.vc test EXT_NMAKE_OPT=$(GDAL_JAVA_OPT)
	cd $(BASE_DIR)
!ENDIF

gdal-python-all:
!IFNDEF NO_BUILD
!IFDEF WIN64
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python31-AMD64 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python31-AMD64 SWIG_VER=2.0.4
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python32-AMD64 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python32-AMD64 SWIG_VER=2.0.4
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python33-AMD64 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python33-AMD64 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python34-AMD64 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python34-AMD64 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python35-AMD64 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python35-AMD64 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python36-AMD64 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python36-AMD64 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python37-AMD64 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python37-AMD64 SWIG_VER=2.0.4
	nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python27-AMD64 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python27-AMD64 SWIG_VER=2.0.4
!ELSE
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python31 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python31 SWIG_VER=2.0.4
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python32 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python32 SWIG_VER=2.0.4
    rem nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python33 SWIG_VER=2.0.4
    rem nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python33 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python34 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python34 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python35 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python35 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python36 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python36 SWIG_VER=2.0.4
    nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python37 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python37 SWIG_VER=2.0.4
	nmake gdal-python GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python27 SWIG_VER=2.0.4
    nmake gdal-python-bdist GDAL_DIR=$(GDAL_DIR) PYTHON_DIR=Python27 SWIG_VER=2.0.4
!ENDIF
!ENDIF

gdal-python: $(GDAL_OPT) $(SWIG_INSTALL)
!IFDEF GDAL_PYTHON
    copy /Y $(GDAL_OPT) $(GDAL_PYTHON_OPT)
    echo PYDIR=$(PYDIR) >>$(GDAL_PYTHON_OPT)
    echo SWIG=$(SWIG_EXE) >>$(GDAL_PYTHON_OPT)
    SET DISTUTILS_USE_SDK=1
    SET MSSdk=1
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig
	echo [build_ext] > python\setup.cfg
    echo include_dirs = ../../port;../../gcore;../../alg;../../ogr/;../../ogr/ogrsf_frmts;../../gnm;../../apps >> python\setup.cfg
    echo library_dirs = ../../ >> python\setup.cfg
    echo libraries = gdal_i >> python\setup.cfg
    cd python
!IFNDEF NO_CLEAN    
    if exist build\nul rmdir /S /Q build
!ENDIF    
    cd ..
!IFNDEF NO_BUILD
	nmake /f makefile.vc python EXT_NMAKE_OPT=$(GDAL_PYTHON_OPT)
!ENDIF
	cd $(PYTHON_OUTDIR)
!IFNDEF NO_COPY	
	if not exist $(OUTPUT_DIR)\bin\gdal\python mkdir $(OUTPUT_DIR)\bin\gdal\python
	xcopy /Y *.py $(OUTPUT_DIR)\bin\gdal\python
	cd osgeo
	if not exist $(OUTPUT_DIR)\bin\gdal\python\osgeo mkdir $(OUTPUT_DIR)\bin\gdal\python\osgeo
	if exist _gdal.pyd.manifest mt -manifest _gdal.pyd.manifest -outputresource:_gdal.pyd;2
	if exist _gdalconst.pyd.manifest mt -manifest _gdalconst.pyd.manifest -outputresource:_gdalconst.pyd;2
	if exist _ogr.pyd.manifest mt -manifest _ogr.pyd.manifest -outputresource:_ogr.pyd;2
	if exist _osr.pyd.manifest mt -manifest _osr.pyd.manifest -outputresource:_osr.pyd;2
	xcopy /Y *.py $(OUTPUT_DIR)\bin\gdal\python\osgeo
	xcopy /Y *.pyd $(OUTPUT_DIR)\bin\gdal\python\osgeo
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\python\scripts
	if not exist $(OUTPUT_DIR)\bin\gdal\python\scripts mkdir $(OUTPUT_DIR)\bin\gdal\python\scripts
	xcopy /Y *.py $(OUTPUT_DIR)\bin\gdal\python\scripts
!ENDIF
	cd $(BASE_DIR)  
!ENDIF

gdal-python-bdist:
!IFDEF GDAL_PYTHON
    SET DISTUTILS_USE_SDK=1
    SET MSSdk=1
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig
	echo [build_ext] > python\setup.cfg
    echo include_dirs = ../../port;../../gcore;../../alg;../../ogr/ >> python\setup.cfg
    echo library_dirs = ../../ >> python\setup.cfg
    echo libraries = gdal_i >> python\setup.cfg
    cd python
!IFNDEF NO_CLEAN    
    if exist dist\nul rmdir /S /Q dist
!ENDIF    
!IFNDEF NO_BUILD
	$(PYTHON_BASE)\$(PYTHON_DIR)\python.exe setup.py bdist $(PYTHON_BDIST_OPTS)
!ENDIF
!IFNDEF NO_COPY	
	if not exist $(OUTPUT_DIR)\install mkdir $(OUTPUT_DIR)\install
	xcopy /Y dist\*.exe $(OUTPUT_DIR)\install
	xcopy /Y dist\*.msi $(OUTPUT_DIR)\install
!ENDIF
	cd $(BASE_DIR)  
!ENDIF

gdal-cpp-test:
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj7\SHARE
    SET GDAL_DRIVER_PATH=$(OUTPUT_DIR)\bin\gdal\plugins;$(OUTPUT_DIR)\bin\gdal\plugins-external
    SET GDAL_DATA=$(BASE_DIR)\$(GDAL_DIR)\gdal\data
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(OUTPUT_DIR)\bin\gdal\python\osgeo;$(BASE_DIR)\$(SDE_DIR);$(BASE_DIR)\$(OCI_DIR);$(FILEGDB_BINPATH);$(PATH)
    cd $(BASE_DIR)\$(GDAL_DIR)\autotest\cpp
    nmake /f makefile.vc clean
    nmake /f makefile.vc
    nmake /f makefile.vc check   
    cd $(BASE_DIR)

gdal-autotest:
    rem SET GDAL_DOWNLOAD_TEST_DATA=YES
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj7\SHARE
    SET GDAL_DRIVER_PATH=$(OUTPUT_DIR)\bin\gdal\plugins;$(OUTPUT_DIR)\bin\gdal\plugins-external
    SET GDAL_DATA=$(BASE_DIR)\$(GDAL_DIR)\gdal\data
    SET PYTHONPATH=$(OUTPUT_DIR)\bin\gdal\python
    SET DO_NOT_FAIL_ON_RECODE_ERRORS="YES"
    SET GDAL_HTTP_UNSAFESSL="YES"
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(OUTPUT_DIR)\bin\gdal\python\osgeo;$(BASE_DIR)\$(SDE_DIR);$(BASE_DIR)\$(OCI_DIR);$(FILEGDB_BINPATH);$(BASE_DIR)\support\diffutils;$(PATH)
    cd $(BASE_DIR)\$(GDAL_DIR)\autotest
    $(PYTHON_BASE)\$(PYTHON_DIR)\Scripts\pytest.exe -vvs --timeout=30 --timeout-method=thread
    cd $(BASE_DIR)
    

$(MSVCRT_DLL): $(OUTPUT_DIR)
!IF $(MSVC_VER) >= 1922
!IFDEF WIN64
    xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC142.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC142.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if exist "%VCToolsRedistDir%x64\Microsoft.VC142.CRT\concrt140.dll" xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC142.CRT\concrt140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCToolsRedistDir%x86\Microsoft.VC142.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCToolsRedistDir%x86\Microsoft.VC142.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if exist "%VCToolsRedistDir%x86\Microsoft.VC142.CRT\concrt140.dll" xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC142.CRT\concrt140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) >= 1911
!IFDEF WIN64
    xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC141.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC141.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if exist "%VCToolsRedistDir%x64\Microsoft.VC141.CRT\concrt140.dll" xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC141.CRT\concrt140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCToolsRedistDir%x86\Microsoft.VC141.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCToolsRedistDir%x86\Microsoft.VC141.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if exist "%VCToolsRedistDir%x86\Microsoft.VC141.CRT\concrt140.dll" xcopy /Y "%VCToolsRedistDir%x64\Microsoft.VC141.CRT\concrt140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1900
!IFDEF WIN64
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC140.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC140.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC140.CRT\vcruntime140.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC140.CRT\msvcp140.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr140-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1800
!IFDEF WIN64
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC120.CRT\msvcr120.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC120.CRT\msvcp120.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr120-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC120.CRT\msvcr120.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC120.CRT\msvcp120.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr120-x86> $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1700
!IFDEF WIN64
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC110.CRT\msvcr110.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC110.CRT\msvcp110.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr110-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC110.CRT\msvcr110.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC110.CRT\msvcp110.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr110-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1600
!IFDEF WIN64
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC100.CRT\msvcr100.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x64\Microsoft.VC100.CRT\msvcp100.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr100-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC100.CRT\msvcr100.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%redist\x86\Microsoft.VC100.CRT\msvcp100.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr100-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1500
!IFDEF WIN64
    xcopy /Y "%VCInstallDir%\redist\amd64\Microsoft.VC90.CRT\msvcr90.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%\redist\amd64\Microsoft.VC90.CRT\msvcp90.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr90-x64 > $(MSVCRT_DLL)
!ELSE
    xcopy /Y "%VCInstallDir%\redist\x86\Microsoft.VC90.CRT\msvcr90.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "%VCInstallDir%\redist\x86\Microsoft.VC90.CRT\msvcp90.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr90-x86 > $(MSVCRT_DLL)
!ENDIF
!ELSEIF $(MSVC_VER) == 1310
    xcopy /Y "C:\Program Files (x86)\Microsoft Visual Studio .NET 2003\SDK\v1.1\Bin\msvcr71.dll" $(OUTPUT_DIR)\bin
    xcopy /Y "C:\Program Files (x86)\Microsoft Visual Studio .NET 2003\SDK\v1.1\Bin\msvcp71.dll" $(OUTPUT_DIR)\bin
    if not exist $(MSVCRT_DLL) echo msvcr71 > $(MSVCRT_DLL)
!ENDIF
    
$(ZLIB_LIB): $(MSVCRT_DLL)
!IFDEF ZLIB_ENABLED
    if not exist $(ZLIB_DIR) git clone -b $(ZLIB_BRANCH) $(ZLIB_SRC) $(ZLIB_DIR)
    cd $(BASE_DIR)\$(ZLIB_DIR)
    git reset --hard HEAD
    git checkout $(ZLIB_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(ZLIB_DIR)\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y /S install\*.pc $(OUTPUT_DIR)
    cd $(BASE_DIR)
!ELSE
    @echo $(ZLIB_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
    
$(OPENSSL_LIB): $(MSVCRT_DLL) $(ZLIB_LIB)
!IFDEF OPENSSL_ENABLED
    if not exist $(OPENSSL_DIR) git clone -b $(OPENSSL_BRANCH) $(OPENSSL_SRC) $(OPENSSL_DIR)
    cd $(BASE_DIR)\$(OPENSSL_DIR)
    git reset --hard HEAD
    git checkout $(OPENSSL_BRANCH)
!IFDEF WIN64
    perl Configure VC-WIN64A no-asm enable-zlib --with-zlib-lib=$(ZLIB_LIB) -I$(OUTPUT_DIR)\include
!ELSE
    perl Configure VC-WIN32 no-asm enable-zlib --with-zlib-lib=$(ZLIB_LIB) -I$(OUTPUT_DIR)\include
!ENDIF
!IFNDEF NO_CLEAN
	nmake clean
!ENDIF
!IFNDEF NO_BUILD
    nmake
!ENDIF
    if not exist $(OUTPUT_DIR)\include\openssl mkdir $(OUTPUT_DIR)\include\openssl
	xcopy /Y include\openssl\*.h $(OUTPUT_DIR)\include\openssl
!IFDEF WIN64
    xcopy /Y lib*1_1-x64.dll $(OUTPUT_DIR)\bin
!ELSE
    xcopy /Y lib*1_1.dll $(OUTPUT_DIR)\bin
!ENDIF
    xcopy /Y *.lib $(OUTPUT_DIR)\lib
    xcopy /Y apps\openssl.exe $(OUTPUT_DIR)\bin
    cd $(BASE_DIR)
!ELSE
    @echo $(OPENSSL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
        
$(CURL_LIB): $(OPENSSL_LIB) $(MSVCRT_DLL) $(ZLIB_LIB) 
!IFDEF CURL_ENABLED
    if not exist $(CURL_DIR) git clone -b $(CURL_BRANCH) $(CURL_SRC) $(CURL_DIR)
    cd $(BASE_DIR)\$(CURL_DIR)
    git reset --hard HEAD
    git checkout $(CURL_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
	if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(CURL_DIR)\$(CMAKE_BUILDDIR)\install" -DZLIB_LIBRARY=$(ZLIB_LIB) -DZLIB_INCLUDE_DIR=$(OUTPUT_DIR)\include -DCMAKE_USE_OPENSSL=ON -DCMAKE_USE_LIBSSH2=OFF -DHAVE_INET_PTON=OFF -DCURL_DISABLE_LDAPS=OFF
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y install\bin\*.exe $(OUTPUT_DIR)\bin
    cd $(BASE_DIR)
!ELSE
    @echo $(CURL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(CURL_EXE): $(CURL_LIB)

$(CURL_CA_BUNDLE): $(CURL_EXE)
!IFDEF CURL_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    $(CURL_EXE) -L -k -o "$(CURL_CA_BUNDLE)" "http://curl.haxx.se/ca/cacert.pem"
!ENDIF
    
$(LIBPNG_LIB): $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL) $(ZLIB_LIB)
!IFDEF LIBPNG_ENABLED
    if not exist $(LIBPNG_DIR) mkdir $(LIBPNG_DIR)
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    cd $(LIBPNG_DIR)
    if not exist $(LIBPNG_VER) $(CURL_EXE) -L -k -o "libpng.zip" "$(LIBPNG_SRC)" & 7z x -y libpng.zip
    cd $(LIBPNG_VER)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(LIBPNG_DIR)\$(LIBPNG_VER)\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    if not exist $(OUTPUT_DIR)\lib\libpng mkdir $(OUTPUT_DIR)\lib\libpng
    xcopy /Y /S install\lib\*.cmake $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(LIBPNG_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(JPEG_LIB): $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL)
!IFDEF JPEG_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(JPEG_DIR) mkdir $(JPEG_DIR)
    cd $(JPEG_DIR)
    if not exist $(JPEG_VER) $(CURL_EXE) -L -k -o "jpeg.zip" "$(JPEG_SRC)" & 7z x -y jpeg.zip  
    xcopy /Y $(BASE_DIR)\support\win32.mak $(BASE_DIR)\$(JPEG_DIR)\$(JPEG_VER)
	cd $(JPEG_VER)
    powershell -Command "(gc makefile.vc) -replace 'cvars\)', 'cvarsdll)' | Out-File -encoding ASCII makefile.vc
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
	del *.manifest
!ENDIF
!IFNDEF NO_BUILD
    if not exist jconfig.h nmake /f makefile.vc  setup-v16
!IF $(MSVC_VER) >= 1400
	nmake /f makefile.vc libjpeg.lib "EXTRAFLAGS=/D_CRT_SECURE_NO_DEPRECATE /D_CRT_NONSTDC_NO_DEPRECATE" NODEBUG=1
!ELSE
	nmake /f makefile.vc libjpeg.lib NODEBUG=1
!ENDIF
!ENDIF
    xcopy /Y *.lib $(OUTPUT_DIR)\lib
    xcopy /Y *.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(JPEG_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FREETYPE_1): $(MSVCRT_DLL) $(ZLIB_LIB) $(LIBPNG_LIB)
!IFDEF FREETYPE_ENABLED
    if not exist $(FREETYPE_DIR) git clone -b $(FREETYPE_BRANCH) $(FREETYPE_SRC) $(FREETYPE_DIR)
    cd $(FREETYPE_DIR)
    git reset --hard HEAD
    git checkout $(FREETYPE_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(OUTPUT_DIR)" "-DZLIB_LIBRARY_RELEASE=$(ZLIB_LIB)" "-DPNG_LIBRARY_RELEASE=$(LIBPNG_LIB)"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install  
!ENDIF
    echo freetype phase 1 > $(FREETYPE_1)
	cd $(BASE_DIR)
!ELSE
    @echo $(FREETYPE_1) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FREETYPE_2): $(FREETYPE_1) $(HARFBUZZ_LIB) $(MSVCRT_DLL) $(ZLIB_LIB) $(LIBPNG_LIB)
!IFDEF FREETYPE_ENABLED
    cd $(BASE_DIR)\$(FREETYPE_DIR)
    git reset --hard HEAD
    git checkout $(FREETYPE_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(FREETYPE_DIR)\$(CMAKE_BUILDDIR)\install" "-DZLIB_LIBRARY_RELEASE=$(ZLIB_LIB)" "-DPNG_LIBRARY_RELEASE=$(LIBPNG_LIB)"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install  
!ENDIF
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
    echo freetype phase 2 > $(FREETYPE_2)
	cd $(BASE_DIR)
!ELSE
    @echo $(FREETYPE_2) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(HARFBUZZ_LIB): $(MSVCRT_DLL) $(FREETYPE_1) $(LIBPNG_LIB) $(ZLIB_LIB)
!IFDEF HARFBUZZ_ENABLED
    if not exist $(HARFBUZZ_DIR) git clone -b $(HARFBUZZ_BRANCH) $(HARFBUZZ_SRC) $(HARFBUZZ_DIR)
    cd $(BASE_DIR)\$(HARFBUZZ_DIR)
    git reset --hard HEAD
    git checkout $(HARFBUZZ_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(OUTPUT_DIR)" "-DHB_HAVE_FREETYPE=ON" "-DCMAKE_CXX_STANDARD_LIBRARIES=$(LIBPNG_LIB) $(ZLIB_LIB)"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(HARFBUZZ_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FREETYPE_LIB): $(FREETYPE_2)

$(POPPLER_LIB): $(MSVCRT_DLL) $(LIBTIFF_LIB) $(ZLIB_LIB) $(CAIRO_LIB) $(FREETYPE_LIB) $(JPEG_LIB) $(OPENJPEG_LIB) $(LIBPNG_LIB)
!IFDEF POPPLER_ENABLED
    if not exist $(POPPLER_DIR) git clone -b $(POPPLER_BRANCH) $(POPPLER_SRC) $(POPPLER_DIR)
    cd $(BASE_DIR)\$(POPPLER_DIR)
    git reset --hard HEAD
    git checkout $(POPPLER_BRANCH)
    powershell -Command "(gc CMakeLists.txt) -replace 'macro_ensure_version', '#macro_ensure_version' | Out-File -encoding ASCII CMakeLists.txt"
    cd utils
    powershell -Command "(gc pdftocairo.cc) -replace 'strcasecmp', '_stricmp' | Out-File -encoding ASCII pdftocairo.cc"
    cd ..
    cd goo
    powershell -Command "(gc JpegWriter.cc) -replace '// JpegWriter.cc', '#include <basetsd.h>' | Out-File -encoding ASCII JpegWriter.cc"
    cd ..
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(POPPLER_DIR)\$(CMAKE_BUILDDIR)\install" "-DENABLE_RELOCATABLE=OFF" "-DBUILD_SHARED_LIBS=ON" "-DFREETYPE_LIBRARY_RELEASE=$(FREETYPE_LIB);$(HARFBUZZ_LIB)" "-DPNG_LIBRARY_RELEASE=$(LIBPNG_LIB)"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\lib\poppler.lib $(OUTPUT_DIR)\lib
    if not exist $(OUTPUT_DIR)\include\poppler mkdir $(OUTPUT_DIR)\include\poppler
	xcopy /Y poppler\poppler-config.h $(OUTPUT_DIR)\include\poppler
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)\$(POPPLER_DIR)
    xcopy /Y /S poppler\*.h $(OUTPUT_DIR)\include\poppler
    if not exist $(OUTPUT_DIR)\include\poppler\goo mkdir $(OUTPUT_DIR)\include\poppler\goo
    xcopy /Y /S goo\*.h $(OUTPUT_DIR)\include\poppler\goo
    if not exist $(OUTPUT_DIR)\include\poppler\splash mkdir $(OUTPUT_DIR)\include\poppler\splash
    xcopy /Y /S splash\*.h $(OUTPUT_DIR)\include\poppler\splash
    cd $(BASE_DIR)
!ELSE
    @echo $(POPPLER_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(LIBTIFF_LIB): $(MSVCRT_DLL) $(ZLIB_LIB) $(JPEG_LIB)
!IFDEF LIBTIFF_ENABLED
    if not exist $(LIBTIFF_DIR) git clone -b $(LIBTIFF_BRANCH) $(LIBTIFF_SRC) $(LIBTIFF_DIR)
    cd $(BASE_DIR)\$(LIBTIFF_DIR)
    git reset --hard HEAD
    git checkout $(LIBTIFF_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(LIBTIFF_DIR)\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(LIBTIFF_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(OPENJPEG_LIB): $(MSVCRT_DLL) $(LIBTIFF_LIB) $(ZLIB_LIB)
!IFDEF OPENJPEG_ENABLED
    if not exist $(OPENJPEG_DIR) git clone -b $(OPENJPEG_BRANCH) $(OPENJPEG_SRC) $(OPENJPEG_DIR)
    cd $(BASE_DIR)\$(OPENJPEG_DIR)
    git reset --hard HEAD
    git checkout $(OPENJPEG_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(OPENJPEG_DIR)\$(CMAKE_BUILDDIR)\install" "-DTIFF_LIBRARY=$(LIBTIFF_LIB)" "-DZLIB_LIBRARY=$(ZLIB_LIB)"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\bin\openjp2.dll $(OUTPUT_DIR)\bin
    xcopy /Y install\bin\opj*.exe $(OUTPUT_DIR)\bin
    xcopy /Y install\lib\openjp2.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\lib\*.cmake $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(OPENJPEG_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(URIPARSER_LIB): $(MSVCRT_DLL)
!IFDEF URIPARSER_ENABLED
    if not exist $(URIPARSER_DIR) git clone -b $(URIPARSER_BRANCH) $(URIPARSER_SRC) $(URIPARSER_DIR)
    cd $(BASE_DIR)\$(URIPARSER_DIR)
    git reset --hard HEAD
    git checkout $(URIPARSER_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(OUTPUT_DIR)" "-DBUILD_SHARED_LIBS=OFF" "-DURIPARSER_BUILD_DOCS=OFF" "-DURIPARSER_BUILD_TESTS=OFF" "-DURIPARSER_BUILD_TOOLS=OFF" "-DURIPARSER_MSVC_RUNTIME=/MD"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(URIPARSER_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(LIBSVG_LIB): $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL) $(URIPARSER_LIB) $(JPEG_LIB) $(LIBPNG_LIB) $(ZLIB_LIB) $(CURL_LIB) $(LIBEXPAT_LIB)
!IFDEF LIBSVG_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(LIBSVG_DIR) mkdir $(LIBSVG_DIR)
    cd $(LIBSVG_DIR)
    if not exist $(LIBSVG_VER).tar.gz $(CURL_EXE) -L -k -o "$(LIBSVG_VER).tar.gz" "$(LIBSVG_SRC)"
    if not exist $(LIBSVG_VER) 7z e -y $(LIBSVG_VER).tar.gz && 7z x -y $(LIBSVG_VER).tar
    xcopy /Y $(BASE_DIR)\support\libsvg\Makefile.vc $(LIBSVG_VER)\src
    cd $(LIBSVG_VER)\src
    powershell -Command "(gc svg_image.c) -replace 'png_set_gray_1_2_4_to_8', 'png_set_expand_gray_1_2_4_to_8' | Out-File -encoding ASCII svg_image.c
!IFNDEF NO_CLEAN
    nmake -f makefile.vc clean SDK_DIR=$(OUTPUT_DIR)
!ENDIF
!IFNDEF NO_BUILD
    nmake -f makefile.vc SDK_DIR=$(OUTPUT_DIR)
	cd ..
!ENDIF
    xcopy /Y $(BASE_DIR)\$(LIBSVG_DIR)\$(LIBSVG_VER)\src\libsvg.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(LIBSVG_DIR)\$(LIBSVG_VER)\src\svg.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(LIBSVG_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(LIBSVGCAIRO_LIB): $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL) $(LIBSVG_LIB) $(CAIRO_LIB)
!IFDEF LIBSVG_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(LIBSVGCAIRO_DIR) mkdir $(LIBSVGCAIRO_DIR)
    cd $(LIBSVGCAIRO_DIR)
    if not exist $(LIBSVGCAIRO_VER).tar.gz $(CURL_EXE) -L -k -o "$(LIBSVGCAIRO_VER).tar.gz" "$(LIBSVGCAIRO_SRC)"
    if not exist $(LIBSVGCAIRO_VER) 7z e -y $(LIBSVGCAIRO_VER).tar.gz && 7z x -y $(LIBSVGCAIRO_VER).tar
    xcopy /Y $(BASE_DIR)\support\libsvg-cairo\Makefile.vc $(LIBSVGCAIRO_VER)\src
    cd $(LIBSVGCAIRO_VER)\src
!IFNDEF NO_CLEAN
    nmake -f makefile.vc clean SDK_DIR=$(OUTPUT_DIR)
!ENDIF
!IFNDEF NO_BUILD
    nmake -f makefile.vc SDK_DIR=$(OUTPUT_DIR)
	cd ..
!ENDIF
    xcopy /Y $(BASE_DIR)\$(LIBSVGCAIRO_DIR)\$(LIBSVGCAIRO_VER)\src\libsvg-cairo.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(LIBSVGCAIRO_DIR)\$(LIBSVGCAIRO_VER)\src\svg-cairo.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(LIBSVGCAIRO_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(GEOS_LIB): $(MSVCRT_DLL)
!IFDEF GEOS_ENABLED
    if not exist $(GEOS_DIR) git clone -b $(GEOS_BRANCH) $(GEOS_SRC) $(GEOS_DIR)
    cd $(BASE_DIR)\$(GEOS_DIR)
    git reset --hard HEAD
    git checkout $(GEOS_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(GEOS_DIR)\$(CMAKE_BUILDDIR)\install" "-DBUILD_SHARED_LIBS=ON"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)\$(GEOS_DIR)\$(CMAKE_BUILDDIR)
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\lib\*.cmake $(OUTPUT_DIR)\lib
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(GEOS_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(LIBEXPAT_LIB):
!IFDEF LIBEXPAT_ENABLED
    if not exist $(LIBEXPAT_DIR) git clone -b $(LIBEXPAT_BRANCH) $(LIBEXPAT_SRC) $(LIBEXPAT_DIR)
    cd $(LIBEXPAT_DIR)
    git reset --hard HEAD
    git checkout $(LIBEXPAT_BRANCH)
    cd expat
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(LIBEXPAT_DIR)\expat\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)\$(LIBEXPAT_DIR)\expat\$(CMAKE_BUILDDIR)\install
    xcopy /Y lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S lib\*.cmake $(OUTPUT_DIR)\lib
    xcopy /Y bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y /S include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(LIBEXPAT_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(XERCES_LIB):
!IFDEF XERCES_ENABLED
    if not exist $(XERCES_DIR) svn co $(XERCES_SRC)/$(XERCES_BRANCH) $(XERCES_DIR)
    cd $(XERCES_DIR)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(XERCES_DIR)\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)\$(XERCES_DIR)\$(CMAKE_BUILDDIR)
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\lib\*.pc $(OUTPUT_DIR)\lib
    xcopy /Y /S install\*.cmake $(OUTPUT_DIR)
    xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y /S install\include\* $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(XERCES_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(PROTOBUF_LIB): $(ZLIB_LIB)
!IFDEF PROTOBUF_ENABLED
    if not exist $(PROTOBUF_DIR) git clone -b $(PROTOBUF_BRANCH) $(PROTOBUF_SRC) $(PROTOBUF_DIR)
    cd $(PROTOBUF_DIR)
    git reset --hard HEAD
    git checkout $(PROTOBUF_BRANCH)
    cd cmake
    powershell -Command "(gc CMakeLists.txt) -replace [regex]::escape('string(REGEX REPLACE \"/MD\"'), '#string(REGEX REPLACE \"/MD\"' | Out-File -encoding ASCII CMakeLists.txt"
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(OUTPUT_DIR)" "-Dprotobuf_BUILD_TESTS=OFF" 
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
	cd $(BASE_DIR)
!ELSE
    @echo $(PROTOBUF_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(PROTOBUF_C_LIB): $(PROTOBUF_LIB)
!IFDEF PROTOBUF_C_ENABLED
    if not exist $(PROTOBUF_C_DIR) git clone -b $(PROTOBUF_C_BRANCH) $(PROTOBUF_C_SRC) $(PROTOBUF_C_DIR)
    cd $(PROTOBUF_C_DIR)
    git reset --hard HEAD
    git checkout $(PROTOBUF_C_BRANCH)
    cd build-cmake
    powershell -Command "(gc CMakeLists.txt) -replace [regex]::escape('string(REGEX REPLACE \"/MD\"'), '#string(REGEX REPLACE \"/MD\"' | Out-File -encoding ASCII CMakeLists.txt"
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(OUTPUT_DIR)" "-DMSVC_STATIC_BUILD=ON"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
	cd $(BASE_DIR)
!ELSE
    @echo $(PROTOBUF_C_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FRIBIDI_LIB):
!IFDEF FRIBIDI_ENABLED
    if not exist $(FRIBIDI_DIR) git clone -b $(FRIBIDI_BRANCH) $(FRIBIDI_SRC) $(FRIBIDI_DIR)
    cd $(FRIBIDI_DIR)
    git reset --hard HEAD
    git checkout $(FRIBIDI_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
!IFNDEF NO_BUILD
    $(PYTHON_BASE)\$(PYTHON_DIR)\Scripts\meson --prefix $(BASE_DIR)\$(FRIBIDI_DIR)\$(CMAKE_BUILDDIR)\install --buildtype=release --backend=ninja $(CMAKE_BUILDDIR) -Ddocs=false
    ninja -v -C $(CMAKE_BUILDDIR)
    ninja -C $(CMAKE_BUILDDIR) install
!ENDIF
    xcopy /Y $(BASE_DIR)\$(FRIBIDI_DIR)\$(CMAKE_BUILDDIR)\install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(FRIBIDI_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y /S $(BASE_DIR)\$(FRIBIDI_DIR)\$(CMAKE_BUILDDIR)\install\include\*.h $(OUTPUT_DIR)\include
    cd $(BASE_DIR)
!ELSE
    @echo $(FRIBIDI_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
    
$(PROJ4_LIB): $(MSVCRT_DLL)
!IFDEF PROJ4_ENABLED
    if not exist $(PROJ4_DIR) git clone -b $(PROJ4_BRANCH) $(PROJ_SRC) $(PROJ4_DIR)
    cd $(PROJ4_DIR)
    git reset --hard HEAD
    git checkout $(PROJ4_BRANCH)
    xcopy /Y $(BASE_DIR)\support\proj4\null $(BASE_DIR)\$(PROJ4_DIR)\nad
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install" -DPROJ_TESTS=OFF -DCMAKE_BUILD_TYPE=$(BUILD_CONFIG) -DBUILD_LIBPROJ_SHARED=ON
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
    rem cd $(BASE_DIR)\$(PROJ4_DIR)\nad
    rem nmake /f makefile.vc install-all INSTDIR=$(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install PROJ_LIB_DIR=$(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\share
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\proj mkdir $(OUTPUT_DIR)\bin\proj
    if not exist $(OUTPUT_DIR)\bin\proj\apps mkdir $(OUTPUT_DIR)\bin\proj\apps
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\local\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.exe $(OUTPUT_DIR)\bin\proj\apps
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\local\include\*.h $(OUTPUT_DIR)\include
    if not exist $(OUTPUT_DIR)\bin\proj\share mkdir $(OUTPUT_DIR)\bin\proj\share
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\$(CMAKE_BUILDDIR)\install\share\* $(OUTPUT_DIR)\bin\proj\share
    xcopy /Y $(BASE_DIR)\$(PROJ4_DIR)\nad\ntv1_can.dat $(OUTPUT_DIR)\bin\proj\share
    copy /Y $(PROJ4_LIB) $(OUTPUT_DIR)\lib\proj_i.lib
	cd $(BASE_DIR)
!ELSE
    @echo $(PROJ4_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
    
$(PROJ6_LIB): $(MSVCRT_DLL) $(SQLITE_LIB)
!IFDEF PROJ6_ENABLED
    if not exist $(PROJ6_DIR) git clone -b $(PROJ6_BRANCH) $(PROJ_SRC) $(PROJ6_DIR)
    cd $(PROJ6_DIR)
    git reset --hard HEAD
    git checkout $(PROJ6_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
    if exist data\proj.db del data\proj.db
    if exist data\all.sql.in del data\all.sql.in
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install" -DPROJ_TESTS=OFF -DCMAKE_BUILD_TYPE=$(BUILD_CONFIG) -DBUILD_LIBPROJ_SHARED=ON
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\proj6 mkdir $(OUTPUT_DIR)\bin\proj6
    if not exist $(OUTPUT_DIR)\bin\proj6\apps mkdir $(OUTPUT_DIR)\bin\proj6\apps
    xcopy /Y $(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.exe $(OUTPUT_DIR)\bin\proj6\apps
    if exist $(OUTPUT_DIR)\include\proj6 rmdir /s /q $(OUTPUT_DIR)\include\proj6
	mkdir $(OUTPUT_DIR)\include\proj6
    xcopy /Y /S $(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install\include\*.h $(OUTPUT_DIR)\include\proj6
    if not exist $(OUTPUT_DIR)\bin\proj6\share mkdir $(OUTPUT_DIR)\bin\proj6\share
    xcopy /Y /S $(BASE_DIR)\$(PROJ6_DIR)\$(CMAKE_BUILDDIR)\install\share\proj\* $(OUTPUT_DIR)\bin\proj6\share
	cd $(BASE_DIR)
!ELSE
    @echo $(PROJ6_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(PROJ7_LIB): $(MSVCRT_DLL) $(LIBTIFF_LIB) $(CURL_LIB) $(SQLITE_LIB)
!IFDEF PROJ7_ENABLED
    if not exist $(PROJ7_DIR) git clone -b $(PROJ7_BRANCH) $(PROJ_SRC) $(PROJ7_DIR)
    cd $(PROJ7_DIR)
    git reset --hard HEAD
    git checkout $(PROJ7_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
    if exist data\proj.db del data\proj.db
    if exist data\all.sql.in del data\all.sql.in
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install" -DPROJ_TESTS=OFF -DCMAKE_BUILD_TYPE=$(BUILD_CONFIG) -DBUILD_SHARED_LIBS=ON
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\proj7 mkdir $(OUTPUT_DIR)\bin\proj7
    if not exist $(OUTPUT_DIR)\bin\proj7\apps mkdir $(OUTPUT_DIR)\bin\proj7\apps
    xcopy /Y $(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install\bin\*.exe $(OUTPUT_DIR)\bin\proj7\apps
    if exist $(OUTPUT_DIR)\include\proj7 rmdir /s /q $(OUTPUT_DIR)\include\proj7
	mkdir $(OUTPUT_DIR)\include\proj7
    xcopy /Y /S $(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install\include\*.h $(OUTPUT_DIR)\include\proj7
    if not exist $(OUTPUT_DIR)\bin\proj7\share mkdir $(OUTPUT_DIR)\bin\proj7\share
    xcopy /Y /S $(BASE_DIR)\$(PROJ7_DIR)\$(CMAKE_BUILDDIR)\install\share\proj\* $(OUTPUT_DIR)\bin\proj7\share
	cd $(BASE_DIR)
!ELSE
    @echo $(PROJ7_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(SQLITE_LIB): $(CURL_EXE) $(MSVCRT_DLL)
!IFDEF SQLITE_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(SQLITE_DIR) mkdir $(SQLITE_DIR)
    cd $(SQLITE_DIR)
    if not exist sqlite $(CURL_EXE) -L -k -o "sqlite.zip" "$(SQLITE_SRC)" & 7z x -y sqlite.zip  
    cd sqlite
!IFNDEF NO_CLEAN
    nmake /f Makefile.msc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f Makefile.msc sqlite3.dll
    nmake /f Makefile.msc sqlite3.exe
!ENDIF
!IFNDEF NO_COPY
    xcopy /Y *.dll $(OUTPUT_DIR)\bin
    xcopy /Y *.exe $(OUTPUT_DIR)\bin
    xcopy /Y *.lib $(OUTPUT_DIR)\lib
    xcopy /Y sqlite3.h $(OUTPUT_DIR)\include
    copy /Y $(SQLITE_LIB) $(OUTPUT_DIR)\lib\sqlite3_i.lib
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(SQLITE_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(SWIG_INSTALL): $(CURL_EXE) $(CURL_CA_BUNDLE)
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(SWIG_DIR) mkdir $(SWIG_DIR)
    cd $(SWIG_DIR)
    if not exist swigwin-$(SWIG_VER) $(CURL_EXE) -L -k -o "swigwin-$(SWIG_VER).zip" "$(SWIG_SRC)" & 7z x -y swigwin-$(SWIG_VER).zip
    echo >$(OUTPUT_DIR)\build\swigwin-$(SWIG_VER).install
    cd $(BASE_DIR)

$(FREEXL_LIB): $(LIBICONV_LIB) $(MSVCRT_DLL)
!IFDEF FREEXL_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(FREEXL_DIR) mkdir $(FREEXL_DIR)
    cd $(FREEXL_DIR)
    if not exist $(FREEXL_VER) $(CURL_EXE) -L -k -o "freexl.zip" "$(FREEXL_SRC)" & 7z x -y freexl.zip
    cd $(FREEXL_VER)
!IFNDEF NO_CLEAN
    nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
	echo INSTDIR=$(OUTPUT_DIR) >nmake.opt
    echo OPTFLAGS= /nologo /Ox /fp:precise /W3 /MD /D_CRT_SECURE_NO_WARNINGS /DDLL_EXPORT /DYY_NO_UNISTD_H /I$(OUTPUT_DIR)\include >>nmake.opt
    powershell -Command "(gc makefile.vc) -replace 'C:\\OSGeo4w\\lib', '$$(LIBDIR)' | Out-File -encoding ASCII makefile.vc
    cd src
    powershell -Command "(gc freexl.c) -replace 'round \(double num\)', 'round_unused (double num)' | Out-File -encoding ASCII freexl.c"
    cd ..
    nmake /f makefile.vc install "LIBDIR=$(OUTPUT_DIR)\lib"
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(FREEXL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(LIBRTTOPO_LIB): $(GEOS_LIB) $(MSVCRT_DLL)
!IFDEF LIBRTTOPO_ENABLED
    if not exist $(LIBRTTOPO_DIR) git clone -b $(LIBRTTOPO_BRANCH) $(LIBRTTOPO_SRC) $(LIBRTTOPO_DIR)
    cd $(LIBRTTOPO_DIR)
!IFNDEF NO_CLEAN
    nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    xcopy /Y $(BASE_DIR)\support\librttopo\rttopo_config.h src
    xcopy /Y $(BASE_DIR)\support\librttopo\librttopo_geom.h headers
    echo INSTDIR=$(OUTPUT_DIR) >nmake.opt
    echo OPTFLAGS=	/nologo /Ox /fp:precise /W4 /MD /D_CRT_SECURE_NO_WARNINGS /DDLL_EXPORT /I$(OUTPUT_DIR)\include >>nmake.opt
    powershell -Command "(gc makefile.vc) -replace 'C:\\OSGeo4w\\lib', '$$(LIBDIR)' | Out-File -encoding ASCII makefile.vc
    powershell -Command "(gc makefile.vc) -replace 'src\\stringbuffer.obj src\\varint.obj', 'src\stringbuffer.obj src\rtt_tpsnap.obj src\varint.obj' | Out-File -encoding ASCII makefile.vc
    nmake /f makefile.vc install "LIBDIR=$(OUTPUT_DIR)\lib"
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(LIBRTTOPO_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF


$(SPATIALITE_LIB): $(LIBRTTOPO_LIB) $(SQLITE_LIB) $(LIBXML2_LIB) $(PROJ4_LIB) $(LIBICONV_LIB) $(FREEXL_LIB) $(GEOS_LIB) $(ZLIB_LIB) $(MSVCRT_DLL)
!IFDEF SPATIALITE_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(SPATIALITE_DIR) mkdir $(SPATIALITE_DIR)
    cd $(SPATIALITE_DIR)
    if not exist spatialite.zip $(CURL_EXE) -L -k -o "spatialite.zip" "$(SPATIALITE_SRC)"
!IFNDEF NO_CLEAN
    if exist $(SPATIALITE_VER) rmdir /s /q $(SPATIALITE_VER)
    rem nmake /f makefile.vc clean
!ENDIF
    if not exist $(SPATIALITE_VER) 7z x -y spatialite.zip
    cd $(SPATIALITE_VER)
!IFNDEF NO_BUILD
    rem powershell -Command "(gc config-msvc.h) -replace '#define HAVE_UNISTD_H 1', '/* #undef HAVE_UNISTD_H */' | Out-File -encoding ASCII config-msvc.h"
    powershell -Command "(gc makefile.vc) -replace 'C:\\OSGeo4w\\lib', '$$(LIBDIR)' | Out-File -encoding ASCII makefile.vc
    powershell -Command "(gc makefile.vc) -replace 'proj_i.lib', 'proj.lib' | Out-File -encoding ASCII makefile.vc
    cd src
    cd gaiageo
    rem powershell -Command "(gc gg_extras.c) -replace 'rint \(double x\)', 'rint_unused (double x)' | Out-File -encoding ASCII gg_extras.c"
    cd ..
    cd ..
    echo INSTDIR=$(BASE_DIR)\$(SPATIALITE_DIR)\install >nmake.opt
    echo OPTFLAGS=	/nologo /Ox /fp:precise /W3 /MD /D_CRT_SECURE_NO_WARNINGS /DDLL_EXPORT /DYY_NO_UNISTD_H /I$(OUTPUT_DIR)\include\proj7 /I$(OUTPUT_DIR)\include >>nmake.opt
    if exist $(BASE_DIR)\$(SPATIALITE_DIR)\install rd /Q /S $(BASE_DIR)\$(SPATIALITE_DIR)\install
    nmake /f makefile.vc install LIBDIR=$(OUTPUT_DIR)\lib
!ENDIF
    xcopy /Y /S $(BASE_DIR)\$(SPATIALITE_DIR)\install\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y $(OUTPUT_DIR)\include\sqlite3.h $(OUTPUT_DIR)\include\spatialite
    xcopy /Y $(BASE_DIR)\$(SPATIALITE_DIR)\install\bin\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(SPATIALITE_DIR)\install\lib\*.lib $(OUTPUT_DIR)\lib
    cd $(BASE_DIR)
!ELSE
    @echo $(SPATIALITE_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(ECW_DLL):
!IFDEF ECWSDK_DIR
    xcopy /Y $(ECWDLL) $(OUTPUT_DIR)\bin
!ENDIF

$(FILEGDBAPI_DLL):
!IFDEF ECWSDK_DIR
    xcopy /Y $(FILEGDB_DLL) $(OUTPUT_DIR)\bin
!ENDIF

$(LIBXML2_LIB): $(ZLIB_LIB) $(LIBICONV_LIB) $(MSVCRT_DLL)
!IFDEF LIBXML2_ENABLED
    if not exist $(LIBXML2_DIR) git clone -b $(LIBXML2_BRANCH) $(LIBXML2_SRC) $(LIBXML2_DIR)
    cd $(LIBXML2_DIR)
!IFNDEF NO_CLEAN
    if exist Release rmdir /s /q Release
    mkdir Release
!ENDIF
    cd win32
!IFNDEF NO_CLEAN
    if exist config.msvc nmake /f makefile.msvc clean
!ENDIF
!IFNDEF NO_BUILD
    cscript configure.js compiler=msvc vcmanifest=yes include=$(OUTPUT_DIR)\include lib=$(OUTPUT_DIR)\lib
    nmake /f makefile.msvc
    nmake /f makefile.msvc install PREFIX=$(BASE_DIR)\$(LIBXML2_DIR)\Release
!ENDIF
    cd ..\..
    xcopy /Y $(BASE_DIR)\$(LIBXML2_DIR)\Release\bin\libxml2.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(LIBXML2_DIR)\Release\lib\libxml2.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S $(BASE_DIR)\$(LIBXML2_DIR)\Release\include\libxml2\* $(OUTPUT_DIR)\include
    cd $(BASE_DIR)
!ELSE
    @echo $(LIBXML2_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(GDAL_OPT):
!IFDEF GDAL_ENABLED
	echo swig - $(SWIG_VER) > $(OUTPUT_DIR)\doc\gdal_deps.txt
	echo $(PYTHON_DIR) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
	echo GDAL_ROOT=$(BASE_DIR)\$(GDAL_DIR)\gdal >> $(GDAL_OPT)
!IFDEF GDAL_GEOS
    echo GEOS_DIR=$(BASE_DIR)\$(GEOS_DIR) >> $(GDAL_OPT)
    echo GEOS_CFLAGS=-I$(OUTPUT_DIR)\include -DHAVE_GEOS >> $(GDAL_OPT)
    echo GEOS_LIB=$(GEOS_LIB) >> $(GDAL_OPT)
    echo geos - $(GEOS_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF    
    echo MSVC_VER=$(MSVC_VER) >> $(GDAL_OPT)
!IFDEF WIN64
	echo WIN64=$(WIN64) >> $(GDAL_OPT)
!ENDIF
!IFDEF DEBUG
    echo DEBUG=$(DEBUG) >> $(GDAL_OPT)
    echo OPTFLAGS= /nologo /MP /MD /Zi /Od /EHsc /FC /D_CRT_SECURE_NO_DEPRECATE /D_CRT_NONSTDC_NO_DEPRECATE /DDEBUG  >> $(GDAL_OPT) 
!ELSE
!IFDEF GDAL_RELEASE_PDB
    echo OPTFLAGS= /nologo /MD /Zi /EHsc /O2 /D_CRT_SECURE_NO_DEPRECATE /D_CRT_NONSTDC_NO_DEPRECATE >> $(GDAL_OPT)
    echo WITH_PDB=1 >> $(GDAL_OPT)  
!ENDIF    
!ENDIF
    echo SETARGV=$(SETARGV) >> $(GDAL_OPT)
!IFDEF GDAL_POSTGIS
    echo PG_INC_DIR = $(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo PG_LIB = $(PGSQL_LIB) wsock32.lib >> $(GDAL_OPT)
    echo libpq - $(PGSQL_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_JAVA
    echo JAVA_HOME=$(JAVA_HOME) >> $(GDAL_OPT)
    echo ANT_HOME=$(ANT_HOME) >> $(GDAL_OPT)
!ENDIF
!IFDEF GDAL_CURL
    echo CURL_DIR= $(BASE_DIR)\$(CURL_DIR) >> $(GDAL_OPT)
    echo CURL_INC = -I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo CURL_LIB = $(CURL_LIB) wsock32.lib wldap32.lib winmm.lib >> $(GDAL_OPT)
    echo libcurl - $(CURL_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
    echo openssl - $(OPENSSL_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_SQLITE
    echo SQLITE_INC=-I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo SQLITE_LIB=$(SQLITE_LIB) >> $(GDAL_OPT)
    echo SQLITE_HAS_COLUMN_METADATA=yes >> $(GDAL_OPT)
    echo sqlite - $(SQLITE_VER) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_SPATIALITE
    echo SQLITE_INC=-I$(OUTPUT_DIR)\include -DHAVE_SPATIALITE -DSPATIALITE_AMALGAMATION >> $(GDAL_OPT)
    echo SQLITE_LIB=$(SQLITE_LIB) $(SPATIALITE_LIB) >> $(GDAL_OPT)
    echo SQLITE_HAS_COLUMN_METADATA=yes >> $(GDAL_OPT)	
    echo spatialite - $(SPATIALITE_VER) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_KMLSUPEROVERLAY
!IF EXIST ($(GDAL_DIR)\frmts\kmlsuperoverlay)
    echo KMLSUPEROVERLAY_SUPPORTED = YES >> $(GDAL_OPT)
    echo MINIZIP_INCLUDE = -I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo MINIZIP_LIBRARY = $(MINIZIP_LIB) >> $(GDAL_OPT)
!ENDIF
!ENDIF
!IFDEF GDAL_MYSQL
    echo MYSQL_INC_DIR=$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo MYSQL_LIB=$(MYSQL_LIB) advapi32.lib >> $(GDAL_OPT)
    echo mysql - $(MYSQL_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_XERCES
    echo XERCES_DIR=$(BASE_DIR)\$(XERCES_DIR) >> $(GDAL_OPT)
    echo XERCES_INCLUDE=-I$(OUTPUT_DIR)\include -I$(OUTPUT_DIR)\include\xercesc >> $(GDAL_OPT)
    echo XERCES_LIB=$(XERCES_LIB) >> $(GDAL_OPT)
    echo xerces - $(XERCES_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
    echo ILI_ENABLED = YES >> $(GDAL_OPT)
!ENDIF
!IFDEF GDAL_EXPAT
    echo EXPAT_DIR=$(BASE_DIR)\$(EXPAT_DIR) >> $(GDAL_OPT)
    echo EXPAT_INCLUDE=-I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo EXPAT_LIB=$(LIBEXPAT_LIB) >> $(GDAL_OPT)
    echo expat - $(LIBEXPAT_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_OGDI
    echo OGDIDIR=$(BASE_DIR)\$(OGDI_DIR) >> $(GDAL_OPT)
    echo OGDI_INCLUDE=$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo OGDILIB=$(OGDI_LIB) >> $(GDAL_OPT)
    echo ogdi - $(OGDI_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_LIBKML
!IFDEF LIBKML_DIR
    echo LIBKML_DIR=$(BASE_DIR)\$(LIBKML_DIR) >> $(GDAL_OPT)
    echo LIBKML_INCLUDE=-I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo LIBKML_LIBS=$(LIBKML_LIBS) $(LIBEXPAT_LIB) $(ZLIB_LIB) $(URIPARSER_LIB) $(MINIZIP_LIB) >> $(GDAL_OPT)
    echo boost - $(BOOST_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
    echo kml - $(LIBKML_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!ENDIF
!IFDEF GDAL_PDF
    rem echo POPPLER_ENABLED = YES >> $(GDAL_OPT)
    rem echo POPPLER_CFLAGS = -I$(OUTPUT_DIR)\include -I$(OUTPUT_DIR)\include\poppler >> $(GDAL_OPT)
    rem echo POPPLER_HAS_OPTCONTENT = YES >> $(GDAL_OPT)
    rem echo POPPLER_MAJOR_VERSION = 0 >> $(GDAL_OPT)
!IFDEF POPPLER_MINOR_VERSION
    rem echo POPPLER_MINOR_VERSION = $(POPPLER_MINOR_VERSION) >> $(GDAL_OPT)
!ELSE
    rem echo POPPLER_MINOR_VERSION = 89 >> $(GDAL_OPT)
!ENDIF
    rem echo POPPLER_BASE_STREAM_HAS_TWO_ARGS = YES >> $(GDAL_OPT)
    rem echo POPPLER_LIBS = $(POPPLER_LIB) $(FREETYPE_LIB) $(HARFBUZZ_LIB) $(LIBPNG_LIB) advapi32.lib gdi32.lib >> $(GDAL_OPT)
    echo poppler - $(POPPLER_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_OPENJPEG
    echo OPENJPEG_ENABLED = YES >> $(GDAL_OPT)
    echo OPENJPEG_CFLAGS = -I$(OUTPUT_DIR)\include\openjpeg-2.3 >> $(GDAL_OPT)
    echo OPENJPEG_LIB = $(OPENJPEG_LIB) >> $(GDAL_OPT)
    echo openjpeg - $(OPENJPEG_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_TIFF
    echo TIFF_INC=-I$(OUTPUT_DIR)\include >> $(GDAL_OPT)
    echo TIFF_LIB=$(OUTPUT_DIR)\lib\tiff.lib >> $(GDAL_OPT)
    echo TIFF_OPTS=-DBIGTIFF_SUPPORT >> $(GDAL_OPT)
    echo libtiff - $(LIBTIFF_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF GDAL_AMIGOCLOUD
    echo AMIGOCLOUD_PLUGIN=YES >> $(GDAL_OPT)
!ENDIF
!IFDEF GDAL_GNM
    echo INCLUDE_GNM_FRMTS=YES >> $(GDAL_OPT)
!ENDIF
!IFDEF SZIP_DIR
    echo szip - $(SZIP_VER) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF FITS_DIR
    echo cfitsio - $(FITS_VER) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF HDF5_DIR
    echo hdf5 - $(HDF5_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF HDF5_DIR
    echo kealib - $(KEA_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF HDF5_DIR
    echo hdf4 - $(HDF4_VER) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF ECW_DIR
    echo ecw - $(ECW_DIR) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF MRSID_DIR
    echo mrsid - $(MRSID_DIR) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF OCI_DIR
    echo oci - $(OCI_DIR) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IFDEF NETCDF_DIR
    echo netcdf - $(NETCDF_BRANCH) >> $(OUTPUT_DIR)\doc\gdal_deps.txt
!ENDIF
!IF DEFINED(GDAL_PROJ7)
    echo PROJ_INCLUDE = -I$(OUTPUT_DIR)\include\proj7 >> $(GDAL_OPT)
    echo PROJ_LIBRARY = $(PROJ7_LIB) >> $(GDAL_OPT)
!ELSEIF DEFINED(GDAL_PROJ6)
    echo PROJ_INCLUDE = -I$(OUTPUT_DIR)\include\proj6 >> $(GDAL_OPT)
    echo PROJ_LIBRARY = $(PROJ6_LIB) >> $(GDAL_OPT)
!ELSE
    echo PROJ_INCLUDE = -I$(OUTPUT_DIR)\include\proj7 >> $(GDAL_OPT)
    echo PROJ_LIBRARY = $(PROJ4_LIB) >> $(GDAL_OPT)
    echo PROJ_FLAGS = -DPROJ_STATIC -DPROJ_VERSION=4 >> $(GDAL_OPT)
!ENDIF
!ENDIF

$(GDAL_VERSION_H): $(GDAL_LIB)

$(GDAL_VERSION): $(GDAL_LIB) $(ECW_DLL) $(FILEGDBAPI_DLL)
    SET GDAL_DRIVER_PATH=$(OUTPUT_DIR)\bin\gdal\plugins;$(OUTPUT_DIR)\bin\gdal\plugins-external
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(BASE_DIR)\$(SDE_DIR);$(INSTANTCLIENT_DIR);$(FILEGDB_BINPATH)
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj\SHARE
    cd $(OUTPUT_DIR)\bin
	gdal\apps\gdalinfo --version > $(GDAL_VERSION)
	gdal\apps\gdalinfo --formats > $(OUTPUT_DIR)\doc\gdal_formats.txt
	gdal\apps\ogrinfo --formats > $(OUTPUT_DIR)\doc\ogr_formats.txt
	cd $(BASE_DIR)

$(GDAL_LIB): $(GDAL_OPT) $(GDAL_DEPS)
!IFDEF GDAL_ENABLED
    if not exist $(GDAL_DIR) git clone -b $(GDAL_BRANCH) $(GDAL_SRC) $(GDAL_DIR)
    cd $(GDAL_DIR)
    git reset --hard HEAD
    git checkout $(GDAL_BRANCH)
    git pull origin $(GDAL_BRANCH)
    git reset --hard $(GDAL_REVISION)
    git log --pretty=format:%H -n 1 > $(OUTPUT_DIR)\doc\gdal_revision.txt
	type $(OUTPUT_DIR)\doc\gdal_revision.txt
    cd gdal
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_OPT)
	-del gdal*.dll
	cd swig
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_OPT)
    cd ..
!ENDIF
!IFNDEF NO_BUILD
	nmake /f makefile.vc EXT_NMAKE_OPT=$(GDAL_OPT)
!ENDIF
	xcopy /Y *.dll $(OUTPUT_DIR)\bin
	xcopy /Y port\*.h $(OUTPUT_DIR)\include
	xcopy /Y gcore\*.h $(OUTPUT_DIR)\include
	xcopy /Y alg\*.h $(OUTPUT_DIR)\include
	xcopy /Y ogr\*.h $(OUTPUT_DIR)\include
	xcopy /Y apps\*.h $(OUTPUT_DIR)\include
	xcopy /Y frmts\mem\memdataset.h $(OUTPUT_DIR)\include
	if exist frmts\raw\rawdataset.h xcopy /Y frmts\raw\rawdataset.h $(OUTPUT_DIR)\include
    if exist gcore\rawdataset.h xcopy /Y gcore\rawdataset.h $(OUTPUT_DIR)\include
	xcopy /Y frmts\gtiff\libgeotiff\*.h $(OUTPUT_DIR)\include
	xcopy /Y frmts\gtiff\libgeotiff\*.inc $(OUTPUT_DIR)\include
	xcopy /Y frmts\vrt\*.h $(OUTPUT_DIR)\include
	xcopy /Y ogr\ogrsf_frmts\*.h $(OUTPUT_DIR)\include
	xcopy /Y gdal_i.lib $(OUTPUT_DIR)\lib
	if not exist $(OUTPUT_DIR)\bin\gdal mkdir $(OUTPUT_DIR)\bin\gdal
	if not exist $(OUTPUT_DIR)\bin\gdal\apps mkdir $(OUTPUT_DIR)\bin\gdal\apps
	xcopy /Y apps\*.exe $(OUTPUT_DIR)\bin\gdal\apps
	if not exist $(OUTPUT_DIR)\bin\gdal-data mkdir $(OUTPUT_DIR)\bin\gdal-data
	xcopy /Y data\*.* $(OUTPUT_DIR)\bin\gdal-data
	if exist $(OUTPUT_DIR)\bin\gdal\plugins del $(OUTPUT_DIR)\bin\gdal\plugins\*.dll
    if exist $(OUTPUT_DIR)\bin\gdal\plugins-optional del $(OUTPUT_DIR)\bin\gdal\plugins-optional\*.dll
	if exist $(OUTPUT_DIR)\bin\gdal\plugins-external del $(OUTPUT_DIR)\bin\gdal\plugins-external\*.dll
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y *.pdb $(OUTPUT_DIR)\bin
    xcopy /Y apps\*.pdb $(OUTPUT_DIR)\bin\gdal\apps
!ENDIF
	cd $(BASE_DIR)
!ELSE
    @echo $(GDAL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(GDAL_CSHARP_OPT): $(GDAL_OPT) $(SWIG_INSTALL)
    copy /Y $(GDAL_OPT) $(GDAL_CSHARP_OPT)
    echo SWIG=$(SWIG_EXE) >>$(GDAL_CSHARP_OPT)

$(GDAL_CSHARP_DLL):	$(GDAL_LIB) $(GDAL_CSHARP_OPT)
	cd $(GDAL_DIR)\gdal\swig\csharp
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT)
!ENDIF
!IFNDEF NO_BUILD
!IFDEF DEBUG
	nmake /f makefile.vc interface EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT) DEBUG=1
!ELSE
	nmake /f makefile.vc interface EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT)
!ENDIF	
	nmake /f makefile.vc EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT)
!ENDIF
	if not exist $(OUTPUT_DIR)\bin\gdal\csharp mkdir $(OUTPUT_DIR)\bin\gdal\csharp
	xcopy /Y *_csharp.dll $(OUTPUT_DIR)\bin\gdal\csharp
    xcopy /Y *_wrap.dll $(OUTPUT_DIR)\bin\gdal\csharp
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y *_csharp.pdb $(OUTPUT_DIR)\bin\gdal\csharp
    xcopy /Y *_wrap.pdb $(OUTPUT_DIR)\bin\gdal\csharp
!ENDIF
	cd $(BASE_DIR)
    
$(GDAL_JAVA_OPT): $(GDAL_OPT) $(SWIG_INSTALL)
    copy /Y $(GDAL_OPT) $(GDAL_JAVA_OPT)
    echo SWIG=$(SWIG_EXE) >>$(GDAL_JAVA_OPT)

$(GDAL_JAVA_DLL): $(GDAL_LIB) $(GDAL_JAVA_OPT) $(GDAL_VERSION_H)
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\java
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_JAVA_OPT)
!ENDIF
    cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig
!IFNDEF NO_BUILD
	nmake /f makefile.vc java EXT_NMAKE_OPT=$(GDAL_JAVA_OPT)
!ENDIF
	if not exist $(OUTPUT_DIR)\bin\gdal\java mkdir $(OUTPUT_DIR)\bin\gdal\java
    cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\java
	xcopy /Y *.dll $(OUTPUT_DIR)\bin\gdal\java
	xcopy /Y *.jar $(OUTPUT_DIR)\bin\gdal\java
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y *.pdb $(OUTPUT_DIR)\bin\gdal\java
!ENDIF
	cd $(BASE_DIR)

gdal-csharp: $(GDAL_CSHARP_DLL)

gdal-csharp-test: $(GDAL_CSHARP_DLL)	
!IFDEF GDAL_CSHARP
    SET PATH=$(OUTPUT_DIR)\bin;$(OUTPUT_DIR)\bin\debug;$(OUTPUT_DIR)\bin\gdal\csharp;$(PATH)
    SET PROJ_LIB=$(OUTPUT_DIR)\bin\proj\SHARE
	cd $(BASE_DIR)\$(GDAL_DIR)\gdal\swig\csharp
	nmake /f makefile.vc test EXT_NMAKE_OPT=$(GDAL_CSHARP_OPT)
	cd $(BASE_DIR)
!ENDIF

$(GDAL_ECW_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_ECW_OPT)
    echo ECW_PLUGIN = YES >> $(GDAL_ECW_OPT)
    echo ECWDIR=$(ECWSDK_DIR) >> $(GDAL_ECW_OPT)
    echo ECWLIB=$(ECWLIB) >> $(GDAL_ECW_OPT)
    echo ECWFLAGS= $(ECWFLAGS) >> $(GDAL_ECW_OPT)

$(GDAL_ECW_DLL): $(GDAL_LIB) $(GDAL_ECW_OPT)
    cd $(GDAL_DIR)\gdal\frmts\ecw
!IFNDEF NO_CLEAN
    nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_ECW_OPT) _WIN32_WINNT=0x0500
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins-optional mkdir $(OUTPUT_DIR)\bin\gdal\plugins
    xcopy /Y gdal_ECW_JP2ECW.dll $(OUTPUT_DIR)\bin\gdal\plugins
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y gdal_ECW_JP2ECW.pdb $(OUTPUT_DIR)\bin\gdal\plugins
!ENDIF   
    cd $(BASE_DIR)

$(GDAL_FILEGDB_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_FILEGDB_OPT)
    echo FGDB_ENABLED = YES >> $(GDAL_FILEGDB_OPT)
    echo FGDB_PLUGIN = YES >> $(GDAL_FILEGDB_OPT)
    echo FGDB_SDK = $(FILEGDB_API_DIR) >> $(GDAL_FILEGDB_OPT)
    echo FGDB_INC = $(FILEGDB_API_DIR)\include >> $(GDAL_FILEGDB_OPT)
!IFDEF WIN64
    echo FGDB_LIB = $(FILEGDB_API_DIR)\lib64\FileGDBAPI.lib >> $(GDAL_FILEGDB_OPT)
!ELSE
    echo FGDB_LIB = $(FILEGDB_API_DIR)\lib\FileGDBAPI.lib >> $(GDAL_FILEGDB_OPT)
!ENDIF

$(GDAL_FILEGDB_DLL): $(GDAL_LIB) $(GDAL_FILEGDB_OPT)
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\filegdb
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
	nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_FILEGDB_OPT)
!ENDIF
	if not exist $(OUTPUT_DIR)\bin\gdal\plugins-external mkdir $(OUTPUT_DIR)\bin\gdal\plugins-external
	xcopy /Y ogr_FileGDB.dll $(OUTPUT_DIR)\bin\gdal\plugins-external
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y ogr_FileGDB.pdb $(OUTPUT_DIR)\bin\gdal\plugins-external
!ENDIF
	cd $(BASE_DIR)

$(GDAL_MSSQL_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_MSSQL_OPT)
    echo SQLNCLI_VERSION = $(SQLNCLI_VERSION) >> $(GDAL_MSSQL_OPT)
    echo SQLNCLI_DIR = $(SQLNCLI_DIR) >> $(GDAL_MSSQL_OPT)
!IFDEF WIN64
	echo SQLNCLI_LIB = "$(SQLNCLI_DIR)\Lib\x64\sqlncli$(SQLNCLI_VERSION).lib" >> $(GDAL_MSSQL_OPT)
!ELSE
	echo SQLNCLI_LIB = "$(SQLNCLI_DIR)\Lib\x86\sqlncli$(SQLNCLI_VERSION).lib" >> $(GDAL_MSSQL_OPT)
!ENDIF
    echo SQLNCLI_INCLUDE = "-I$(SQLNCLI_DIR)\Include" -DSQLNCLI_VERSION=$(SQLNCLI_VERSION) -DMSSQL_BCP_SUPPORTED=1 >> $(GDAL_MSSQL_OPT)

$(GDAL_MSSQL_DLL): $(GDAL_MSSQL_OPT)
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\mssqlspatial
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
	nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_MSSQL_OPT)
!ENDIF
	if not exist $(OUTPUT_DIR)\bin\gdal\plugins-optional mkdir $(OUTPUT_DIR)\bin\gdal\plugins-optional
	xcopy /Y ogr_MSSQLSpatial.dll $(OUTPUT_DIR)\bin\gdal\plugins-optional
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y ogr_MSSQLSpatial.pdb $(OUTPUT_DIR)\bin\gdal\plugins-optional
!ENDIF
	cd $(BASE_DIR)

$(GDAL_MSSQL_MSODBC_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_MSSQL_MSODBC_OPT)
    echo MSODBCSQL_VERSION = $(MSODBCSQL_VERSION) >> $(GDAL_MSSQL_MSODBC_OPT)
    echo MSODBCSQL_DIR = $(MSODBCSQL_DIR) >> $(GDAL_MSSQL_MSODBC_OPT)
!IFDEF WIN64
	echo MSODBCSQL_LIB = "$(MSODBCSQL_DIR)\Lib\x64\msodbcsql$(MSODBCSQL_VERSION).lib" >> $(GDAL_MSSQL_MSODBC_OPT)
!ELSE
	echo MSODBCSQL_LIB = "$(MSODBCSQL_DIR)\Lib\x86\msodbcsql$(MSODBCSQL_VERSION).lib" >> $(GDAL_MSSQL_MSODBC_OPT)
!ENDIF
    echo MSODBCSQL_INCLUDE = "-I$(MSODBCSQL_DIR)\Include" -DMSODBCSQL_VERSION=$(MSODBCSQL_VERSION) -DMSSQL_BCP_SUPPORTED=1 >> $(GDAL_MSSQL_MSODBC_OPT)

$(GDAL_MSSQL_MSODBC_DLL): $(GDAL_MSSQL_MSODBC_OPT)
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\mssqlspatial
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
	nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_MSSQL_OPT)
!ENDIF
	if not exist $(OUTPUT_DIR)\bin\gdal\plugins-optional mkdir $(OUTPUT_DIR)\bin\gdal\plugins-optional
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins-optional\msodbc mkdir $(OUTPUT_DIR)\bin\gdal\plugins-optional\msodbc
	xcopy /Y ogr_MSSQLSpatial.dll $(OUTPUT_DIR)\bin\gdal\plugins-optional\msodbc
!IFDEF GDAL_RELEASE_PDB
    xcopy /Y ogr_MSSQLSpatial.pdb $(OUTPUT_DIR)\bin\gdal\plugins-optional\msodbc
!ENDIF
	cd $(BASE_DIR)

$(GDAL_HDF4_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_HDF4_OPT)
    echo HDF4_PLUGIN=YES >> $(GDAL_HDF4_OPT)
    echo HDF4_DIR =	$(BASE_DIR)\$(HDF4_DIR)\$(CMAKE_BUILDDIR)\install >> $(GDAL_HDF4_OPT)
    echo HDF4_LIB =	$(HDF4_LIB)  >> $(GDAL_HDF4_OPT)
    echo HDF4_INCLUDE = $(OUTPUT_DIR)\include\hdf4 >> $(GDAL_HDF4_OPT)

$(GDAL_HDF4_DLL): $(GDAL_HDF4_OPT) $(HDF4_LIB)
    cd $(GDAL_DIR)\gdal\frmts\hdf4
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc EXT_NMAKE_OPT=$(GDAL_HDF4_OPT)
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_HDF4_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_HDF4.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(OUTPUT_DIR)\bin\gdal\plugins
	copy /Y gdal_HDF4.dll gdal_HDF4Image.dll
	cd $(BASE_DIR)

$(GDAL_HDF5_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_HDF5_OPT)
    echo HDF5_PLUGIN=YES >> $(GDAL_HDF5_OPT)
    echo HDF5_DIR =	$(OUTPUT_DIR) >> $(GDAL_HDF5_OPT)
    echo HDF5_LIB =	$(HDF5_LIB) $(ZLIB_LIB) $(SZIP_LIB)  >> $(GDAL_HDF5_OPT)

$(GDAL_HDF5_DLL): $(GDAL_HDF5_OPT) $(HDF5_LIB) $(ZLIB_LIB) $(SZIP_LIB)
    cd $(GDAL_DIR)\gdal\frmts\hdf5
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_HDF5_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_HDF5.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(OUTPUT_DIR)\bin\gdal\plugins
	copy /Y gdal_HDF5.dll gdal_HDF5Image.dll
    copy /Y gdal_HDF5.dll gdal_BAG.dll
	cd $(BASE_DIR)

$(GDAL_KEA_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_KEA_OPT)
    echo KEA_PLUGIN=YES >> $(GDAL_KEA_OPT)
    echo KEA_LIB =	$(KEA_LIB) $(HDF5_LIB) >> $(GDAL_KEA_OPT)
	echo KEA_CFLAGS = -I$(OUTPUT_DIR)\include >> $(GDAL_KEA_OPT)

$(GDAL_KEA_DLL): $(GDAL_KEA_OPT) $(KEA_LIB)
    cd $(GDAL_DIR)\gdal\frmts\kea
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_KEA_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_KEA.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)

$(GDAL_AMIGOCLOUD_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_AMIGOCLOUD_OPT)
    echo AMIGOCLOUD_PLUGIN=YES >> $(GDAL_AMIGOCLOUD_OPT)

$(GDAL_AMIGOCLOUD_DLL): $(GDAL_AMIGOCLOUD_OPT)
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\amigocloud
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_AMIGOCLOUD_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y ogr_AmigoCloud.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)

$(GDAL_NETCDF_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_NETCDF_OPT)
    echo NETCDF_PLUGIN=YES >> $(GDAL_NETCDF_OPT)
    echo NETCDF_SETTING=yes >> $(GDAL_NETCDF_OPT)
    echo NETCDF_LIB=$(NETCDF_LIB) >> $(GDAL_NETCDF_OPT)
    echo NETCDF_INC_DIR=$(OUTPUT_DIR)\include >> $(GDAL_NETCDF_OPT)

$(GDAL_NETCDF_DLL): $(GDAL_NETCDF_OPT) $(NETCDF_LIB)
    cd $(GDAL_DIR)\gdal\frmts\netcdf
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_NETCDF_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_netCDF.dll $(OUTPUT_DIR)\bin\gdal\plugins
    cd $(OUTPUT_DIR)\bin\gdal\plugins
	copy /Y gdal_netCDF.dll gdal_GMT.dll
	cd $(BASE_DIR)

$(GDAL_FITS_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_FITS_OPT)
    echo FITS_PLUGIN=YES >> $(GDAL_FITS_OPT)
    echo FITS_INC_DIR=$(OUTPUT_DIR)\include >> $(GDAL_FITS_OPT)
    echo FITS_LIB=$(OUTPUT_DIR)\lib\cfitsio.lib >> $(GDAL_FITS_OPT)
    
$(GDAL_FITS_DLL): $(GDAL_FITS_OPT) $(FITS_LIB)
    cd $(GDAL_DIR)\gdal\frmts\fits
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_FITS_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_FITS.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)

$(GDAL_PG_DLL): $(GDAL_OPT) $(PGSQL_LIB)
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\pg
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins-optional mkdir $(OUTPUT_DIR)\bin\gdal\plugins-optional
	xcopy /Y ogr_PG.dll $(OUTPUT_DIR)\bin\gdal\plugins-optional
	cd $(BASE_DIR)
    
$(GDAL_OCI_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_OCI_OPT)
    echo OCI_PLUGIN=YES >> $(GDAL_OCI_OPT)
    echo OCI_LIB =	$(INSTANTCLIENT_DIR)\sdk\lib\msvc\oci.lib $(ZLIB_LIB) >> $(GDAL_OCI_OPT)
    echo OCI_INCLUDE =	-I$(INSTANTCLIENT_DIR)\sdk\include >> $(GDAL_OCI_OPT)

$(GDAL_OCI_DLL): $(GDAL_OCI_OPT)
!IFDEF OCI_DIR
    cd $(GDAL_DIR)\gdal\ogr\ogrsf_frmts\oci
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
    del *.manifest
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_OCI_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y ogr_OCI.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)
!ENDIF

$(GDAL_GEOR_DLL): $(GDAL_OCI_OPT)
!IFDEF OCI_DIR
    cd $(GDAL_DIR)\gdal\frmts\georaster
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
    del *.manifest
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_OCI_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_GEOR.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)
!ENDIF

$(GDAL_MRSID_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_MRSID_OPT)
!IFDEF MRSID_DIR
    echo MRSID_DIR=$(MRSID_DIR) >> $(GDAL_MRSID_OPT)
    echo MRSID_RDLLBUILD = YES >> $(GDAL_MRSID_OPT)
    echo MRSID_LDLLBUILD = YES >> $(GDAL_MRSID_OPT)
    echo MRSID_INCLUDE=$(MRSID_INCLUDE) >> $(GDAL_MRSID_OPT)
    echo MRSID_LIB=$(MRSID_LIB) advapi32.lib user32.lib >> $(GDAL_MRSID_OPT)
    echo MRSID_PLUGIN = YES >> $(GDAL_MRSID_OPT)
    
    echo MRSID_RASTER_DIR = $(MRSID_RASTER_DIR)
    echo MRSID_RVER       = $(MRSID_RVER)
    echo MRSID_JP2        = $(MRSID_JP2)
    echo MRSID_ESDK       = $(MRSID_ESDK)
    echo MRSID_RDLLBUILD  = $(MRSID_RDLLBUILD)
    echo MRSID_LIDAR_DIR  = $(MRSID_LIDAR_DIR)
    echo MRSID_LVER       = $(MRSID_LVER)
    echo MRSID_LDLLBUILD  = $(MRSID_LDLLBUILD)
    echo MRSID_CONFIG     = $(MRSID_CONFIG)
    echo MRSID_FLAGS      = $(MRSID_FLAGS)
    echo MRSID_INCLUDE    = $(MRSID_INCLUDE)
    echo MRSID_LIB        = $(MRSID_LIB)
    echo MRSID_DLL        = $(MRSID_DLL)
    echo LIDAR_DLL        = $(LIDAR_DLL)
!ENDIF

$(GDAL_MRSID_DLL): $(GDAL_MRSID_OPT)
!IFDEF MRSID_DIR
    cd $(GDAL_DIR)\gdal\frmts\mrsid
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_MRSID_OPT)
    del *.manifest
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_MRSID_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	if exist $(OUTPUT_DIR)\bin\lti_dsdk_dll.dll del $(OUTPUT_DIR)\bin\lti_dsdk_dll.dll
    if exist $(OUTPUT_DIR)\bin\lti_dsdk.dll del $(OUTPUT_DIR)\bin\lti_dsdk.dll
    if exist $(OUTPUT_DIR)\bin\lti_lidar_dsdk.dll del $(OUTPUT_DIR)\bin\lti_lidar_dsdk.dll
	if exist $(OUTPUT_DIR)\bin\lti_dsdk_9.0.dll del $(OUTPUT_DIR)\bin\lti_dsdk_9.0.dll
	if exist $(OUTPUT_DIR)\bin\lti_dsdk_9.1.dll del $(OUTPUT_DIR)\bin\lti_dsdk_9.1.dll
    if exist $(OUTPUT_DIR)\bin\lti_lidar_dsdk_1.1.dll del $(OUTPUT_DIR)\bin\lti_lidar_dsdk_1.1.dll
	if exist $(OUTPUT_DIR)\bin\tbb.dll del $(OUTPUT_DIR)\bin\tbb.dll
	xcopy /Y gdal_MrSID.dll $(OUTPUT_DIR)\bin\gdal\plugins
	if exist $(MRSID_DLL) xcopy /Y $(MRSID_DLL) $(OUTPUT_DIR)\bin
	if exist $(MRSID_RASTER_DIR)\lib\tbb.dll xcopy /Y $(MRSID_RASTER_DIR)\lib\tbb.dll $(OUTPUT_DIR)\bin
!IF EXIST($(MRSID_DLL))
    xcopy /Y $(MRSID_DLL) $(OUTPUT_DIR)\bin
!ENDIF
!IF EXIST($(LIDAR_DLL))
    xcopy /Y $(LIDAR_DLL) $(OUTPUT_DIR)\bin
!ENDIF
	cd $(BASE_DIR)
!ENDIF

$(GDAL_MRSID_LIDAR_DLL): $(GDAL_MRSID_OPT)
!IFDEF MRSID_DIR
    cd $(GDAL_DIR)\gdal\frmts\mrsid_lidar
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean EXT_NMAKE_OPT=$(GDAL_MRSID_OPT)
    del *.manifest
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_MRSID_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_MG4Lidar.dll $(OUTPUT_DIR)\bin\gdal\plugins
    if exist $(LIDAR_DLL) xcopy /Y $(LIDAR_DLL) $(OUTPUT_DIR)\bin
	if exist $(MRSID_RASTER_DIR)\lib\tbb.dll xcopy /Y $(MRSID_RASTER_DIR)\lib\tbb.dll $(OUTPUT_DIR)\bin
!IF EXIST($(MRSID_DLL))
    xcopy /Y $(MRSID_DLL) $(OUTPUT_DIR)\bin
!ENDIF
!IF EXIST($(LIDAR_DLL))
    xcopy /Y $(LIDAR_DLL) $(OUTPUT_DIR)\bin
!ENDIF
	cd $(BASE_DIR)
!ENDIF

$(GDAL_PDF_OPT): $(GDAL_OPT)
    copy /Y $(GDAL_OPT) $(GDAL_PDF_OPT)
    echo PDF_PLUGIN=YES >> $(GDAL_PDF_OPT)
    echo POPPLER_ENABLED = YES >> $(GDAL_PDF_OPT)
    echo POPPLER_CFLAGS = -I$(OUTPUT_DIR)\include -I$(OUTPUT_DIR)\include\poppler >> $(GDAL_PDF_OPT)
    echo POPPLER_HAS_OPTCONTENT = YES >> $(GDAL_PDF_OPT)
    echo POPPLER_MAJOR_VERSION = 0 >> $(GDAL_PDF_OPT)
!IFDEF POPPLER_MINOR_VERSION
    echo POPPLER_MINOR_VERSION = $(POPPLER_MINOR_VERSION) >> $(GDAL_PDF_OPT)
!ELSE
    echo POPPLER_MINOR_VERSION = 89 >> $(GDAL_PDF_OPT)
!ENDIF
    echo POPPLER_BASE_STREAM_HAS_TWO_ARGS = YES >> $(GDAL_PDF_OPT)
    echo POPPLER_LIBS = $(POPPLER_LIB) $(FREETYPE_LIB) $(HARFBUZZ_LIB) $(LIBPNG_LIB) $(JPEG_LIB) $(LIBTIFF_LIB) $(OPENJPEG_LIB) $(ZLIB_LIB) advapi32.lib gdi32.lib >> $(GDAL_PDF_OPT)
    
$(GDAL_PDF_DLL): $(GDAL_PDF_OPT) $(POPPLER_LIB)
    cd $(GDAL_DIR)\gdal\frmts\pdf
!IFNDEF NO_CLEAN
	nmake /f makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.vc plugin EXT_NMAKE_OPT=$(GDAL_PDF_OPT)
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\gdal\plugins mkdir $(OUTPUT_DIR)\bin\gdal\plugins
	xcopy /Y gdal_PDF.dll $(OUTPUT_DIR)\bin\gdal\plugins
	cd $(BASE_DIR)

$(MAPSERVER_LIB): $(MAPSERVER_DEPS_ALL) 
!IFDEF MAPSERVER_ENABLED
    set PATH=$(OUTPUT_DIR)\bin;$(PATH)
    if not exist $(MAPSERVER_DIR) git clone -b $(MAPSERVER_BRANCH) $(MAPSERVER_SRC) $(MAPSERVER_DIR)
	cd $(MAPSERVER_DIR) 
!IFNDEF NO_CLEAN
    git reset --hard HEAD
    git checkout $(MAPSERVER_BRANCH)
    git pull origin $(MAPSERVER_BRANCH)
    git reset --hard $(MS_REVISION)
	git log --pretty=format:%H -n 1 > $(OUTPUT_DIR)\doc\ms_revision.txt
	type $(OUTPUT_DIR)\doc\ms_revision.txt
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\install" -DCMAKE_BUILD_TYPE=$(BUILD_CONFIG) $(MAPSERVER_OPT)
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    if not exist $(OUTPUT_DIR)\bin\ms mkdir $(OUTPUT_DIR)\bin\ms
	if not exist $(OUTPUT_DIR)\bin\ms\apps mkdir $(OUTPUT_DIR)\bin\ms\apps
	xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\$(BUILD_CONFIG)\*.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\$(BUILD_CONFIG)\*.exe $(OUTPUT_DIR)\bin\ms\apps
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\install\include\*.h $(OUTPUT_DIR)\include
!IFDEF MS_RELEASE_PDB
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\$(BUILD_CONFIG)\mapserver.pdb $(OUTPUT_DIR)\bin
!ENDIF
!IFDEF MS_MSSQL
    if not exist $(OUTPUT_DIR)\bin\ms\plugins\mssql2008 mkdir $(OUTPUT_DIR)\bin\ms\plugins\mssql2008
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\$(BUILD_CONFIG)\msplugin_mssql2008.dll $(OUTPUT_DIR)\bin\ms\plugins\mssql2008
!IFDEF MS_RELEASE_PDB
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\$(BUILD_CONFIG)\msplugin_mssql2008.pdb $(OUTPUT_DIR)\bin\ms\plugins\mssql2008
!ENDIF
!ENDIF
!IFDEF MS_CSHARP
    if not exist $(OUTPUT_DIR)\bin\ms\csharp mkdir $(OUTPUT_DIR)\bin\ms\csharp
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\mapscript\csharp\$(BUILD_CONFIG)\*.dll $(OUTPUT_DIR)\bin\ms\csharp
	xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\mapscript\csharp\*.dll $(OUTPUT_DIR)\bin\ms\csharp
	xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\mapscript\csharp\*.exe $(OUTPUT_DIR)\bin\ms\csharp
!IFDEF MS_RELEASE_PDB
    xcopy /Y $(BASE_DIR)\$(MAPSERVER_DIR)\$(CMAKE_BUILDDIR)\mapscript\csharp\$(BUILD_CONFIG)\*.pdb $(OUTPUT_DIR)\bin\ms\csharp
!ENDIF
!ENDIF
	cd $(OUTPUT_DIR)\bin
	ms\apps\mapserv -v > $(OUTPUT_DIR)\doc\ms_version.txt
	cd $(BASE_DIR)
!ELSE
    @echo $(MAPSERVER_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
    
$(PGSQL_LIB): $(OPENSSL_LIB) $(MSVCRT_DLL)
!IFDEF PGSQL_ENABLED
    if not exist $(PGSQL_DIR) git clone -b $(PGSQL_BRANCH) $(PGSQL_SRC) $(PGSQL_DIR)
    cd $(BASE_DIR)\$(PGSQL_DIR)
    rem git reset --hard HEAD
    rem git checkout $(PGSQL_BRANCH)
    cd src\tools\msvc
    echo $$config-^>{openssl} = '$(OUTPUT_DIR)'; >config.pl
!IFNDEF NO_CLEAN
    clean dist
!ENDIF
!IFNDEF NO_BUILD
    build libpq
!ENDIF
    cd $(BASE_DIR)\$(PGSQL_DIR)\$(BUILD_CONFIG)\libpq
    xcopy /Y *.dll $(OUTPUT_DIR)\bin
    xcopy /Y *.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(PGSQL_DIR)\src\interfaces\libpq\libpq-fe.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(PGSQL_DIR)\src\interfaces\libpq\libpq-events.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(PGSQL_DIR)\src\include\postgres_ext.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(PGSQL_DIR)\src\include\pg_config_ext.h $(OUTPUT_DIR)\include
    cd $(BASE_DIR)
!ELSE
    @echo $(PGSQL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.    
!ENDIF

$(FITS_LIB): $(MSVCRT_DLL)
!IFDEF FITS_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(FITS_DIR) mkdir $(FITS_DIR)
    cd $(FITS_DIR)
    if not exist $(FITS_VER).tar.gz $(CURL_EXE) -L -k -o "$(FITS_VER).tar.gz" "$(FITS_SRC)"
    if not exist $(FITS_VER) 7z e -y $(FITS_VER).tar.gz && 7z x -y $(FITS_VER).tar
    cd $(FITS_VER)
!IFNDEF NO_CLEAN
    if exist cmake rd /Q /S cmake
!ENDIF
!IFNDEF NO_BUILD
    if not exist cmake mkdir cmake
	cd cmake
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(FITS_DIR)\$(FITS_VER)\cmake\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y $(BASE_DIR)\$(FITS_DIR)\$(FITS_VER)\cmake\install\bin\cfitsio.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(FITS_DIR)\$(FITS_VER)\cmake\install\lib\cfitsio.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(FITS_DIR)\$(FITS_VER)\cmake\install\include\fitsio.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(FITS_DIR)\$(FITS_VER)\cmake\install\include\longnam.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(FITS_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(SZIP_LIB): $(MSVCRT_DLL)
!IFDEF SZIP_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(SZIP_DIR) mkdir $(SZIP_DIR)
    cd $(SZIP_DIR)
    if not exist $(SZIP_VER).tar.gz $(CURL_EXE) -L -k -o "$(SZIP_VER).tar.gz" "$(SZIP_SRC)"
    if not exist $(SZIP_VER) 7z e -y $(SZIP_VER).tar.gz && 7z x -y $(SZIP_VER).tar
    cd $(SZIP_VER)
!IFNDEF NO_CLEAN
    if exist cmake rd /Q /S cmake
!ENDIF
!IFNDEF NO_BUILD
    if not exist cmake mkdir cmake
	cd cmake
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(SZIP_DIR)\$(SZIP_VER)\cmake\install" "-DBUILD_SHARED_LIBS=ON"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)\$(SZIP_DIR)\$(SZIP_VER)\cmake\install
    xcopy /Y lib\*.lib $(OUTPUT_DIR)\lib
	xcopy /Y bin\szip.dll $(OUTPUT_DIR)\bin
	xcopy /Y /S include\*.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(SZIP_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(HDF4_LIB): $(ZLIB_LIB) $(SZIP_LIB) $(JPEG_LIB) $(MSVCRT_DLL)
!IFDEF HDF4_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(HDF4_DIR) mkdir $(HDF4_DIR)
    cd $(HDF4_DIR)
    if not exist $(HDF4_VER).zip $(CURL_EXE) -L -k -o "$(HDF4_VER).zip" "$(HDF4_SRC)" & 7z x -y $(HDF4_VER).zip
    cd $(HDF4_VER)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
!IFDEF HDF4_SZIP
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(HDF4_DIR)\$(HDF4_VER)\$(CMAKE_BUILDDIR)\install" "-DHDF4_ENABLE_Z_LIB_SUPPORT=ON" "-DHDF4_ENABLE_SZIP_SUPPORT=ON" "-DHDF4_BUILD_FORTRAN=OFF" "-DJPEG_LIBRARY=$(JPEG_LIB)"  "-DBUILD_SHARED_LIBS=ON"
!ELSE
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(HDF4_DIR)\$(HDF4_VER)\$(CMAKE_BUILDDIR)\install" "-DHDF4_ENABLE_Z_LIB_SUPPORT=ON" "-DHDF4_ENABLE_SZIP_SUPPORT=OFF" "-DHDF4_BUILD_FORTRAN=OFF" "-DJPEG_LIBRARY=$(JPEG_LIB)"  "-DBUILD_SHARED_LIBS=ON"
!ENDIF
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    cd $(BASE_DIR)\$(HDF4_DIR)\$(HDF4_VER)\$(CMAKE_BUILDDIR)\install
    xcopy /Y lib\*.lib $(OUTPUT_DIR)\lib
	xcopy /Y bin\hdf.dll $(OUTPUT_DIR)\bin
    xcopy /Y bin\mfhdf.dll $(OUTPUT_DIR)\bin
    xcopy /Y bin\xdr.dll $(OUTPUT_DIR)\bin
    if not exist $(OUTPUT_DIR)\include\hdf4 mkdir $(OUTPUT_DIR)\include\hdf4
    xcopy  /Y /S include\*.h $(OUTPUT_DIR)\include\hdf4
    cd $(BASE_DIR)
!ELSE
    @echo $(HDF4_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(HDF5_LIB): $(MSVCRT_DLL) $(SZIP_LIB) $(ZLIB_LIB)
!IFDEF HDF5_ENABLED
    if not exist $(HDF5_DIR) git clone -b $(HDF5_BRANCH) $(HDF5_SRC) $(HDF5_DIR)
    cd $(BASE_DIR)\$(HDF5_DIR)
    git reset --hard HEAD
    git checkout $(HDF5_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(HDF5_DIR)\$(CMAKE_BUILDDIR)\install" "-DHDF5_ENABLE_Z_LIB_SUPPORT=ON" "-DHDF5_ENABLE_SZIP_SUPPORT=ON" "-DSZIP_DIR=$(BASE_DIR)\$(SZIP_DIR)\$(CMAKE_BUILDDIR)" "-DBUILD_SHARED_LIBS=ON" "-DHDF5_BUILD_HL_LIB=ON" "-DHDF5_BUILD_CPP_LIB=ON" "-DHDF5_BUILD_EXAMPLES=OFF" "-DHDF5_BUILD_TOOLS=OFF"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\lib\*.pc $(OUTPUT_DIR)\lib
    xcopy /Y /S install\*.cmake $(OUTPUT_DIR)
    xcopy /Y install\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y install\bin\hdf5*.dll $(OUTPUT_DIR)\bin
    cd $(BASE_DIR)
!ELSE
    @echo $(HDF5_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(KEA_LIB): $(MSVCRT_DLL) $(HDF5_LIB)
!IFDEF KEA_ENABLED
    if not exist $(KEA_DIR) git clone -b $(KEA_BRANCH) $(KEA_SRC) $(KEA_DIR)
    cd $(BASE_DIR)\$(KEA_DIR)
    git reset --hard HEAD
    git checkout $(KEA_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(KEA_DIR)\$(CMAKE_BUILDDIR)\install"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
	xcopy /Y install\bin\*.dll $(OUTPUT_DIR)\bin
	xcopy /Y /S install\*.h $(OUTPUT_DIR)
    cd $(BASE_DIR)
!ELSE
    @echo $(KEA_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(NETCDF_LIB): $(MSVCRT_DLL) $(HDF5_LIB) $(CURL_LIB) $(ZLIB_LIB)
!IFDEF KEA_ENABLED
    if not exist $(NETCDF_DIR) git clone -b $(NETCDF_BRANCH) $(NETCDF_SRC) $(NETCDF_DIR)
    cd $(BASE_DIR)\$(NETCDF_DIR)
    git reset --hard HEAD
    git checkout $(NETCDF_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) -DCMAKE_BUILD_TYPE=Release "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(NETCDF_DIR)\$(CMAKE_BUILDDIR)\install" "-DHDF5_DIR=$(OUTPUT_DIR)\cmake\hdf5" "-DBUILD_SHARED_LIBS=ON" "-DENABLE_HDF4=ON" "-DHDF4_DF_LIB=$(OUTPUT_DIR)\lib\hdf.lib" "-DHDF4_MFHDF_LIB=$(OUTPUT_DIR)\lib\mfhdf.lib" "-DMFHDF_H_INCLUDE_DIR=$(OUTPUT_DIR)\include\hdf4"
	xcopy /Y $(OUTPUT_DIR)\lib\szip.lib $(BASE_DIR)\$(NETCDF_DIR)\$(CMAKE_BUILDDIR)\liblib
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install
!ENDIF
    xcopy /Y install\lib\netcdf.lib $(OUTPUT_DIR)\lib
	xcopy /Y install\bin\netcdf.dll $(OUTPUT_DIR)\bin
	xcopy /Y install\include\*.h $(OUTPUT_DIR)\include
    cd $(BASE_DIR)
!ELSE
    @echo $(NETCDF_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FCGI_LIB):
!IFDEF FCGI_ENABLED
    if not exist $(FCGI_DIR) git clone -b $(FCGI_BRANCH) $(FCGI_SRC) $(FCGI_DIR)
    cd $(FCGI_DIR)
    git reset --hard HEAD
    git checkout $(FCGI_BRANCH)
    xcopy /Y $(BASE_DIR)\support\fcgi\libfcgi.mak libfcgi
    cd libfcgi
!IFNDEF NO_CLEAN
    if exist Release rd /Q /S Release
    nmake /f libfcgi.mak clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f libfcgi.mak
!ENDIF
    xcopy /Y $(BASE_DIR)\$(FCGI_DIR)\libfcgi\Release\libfcgi.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(FCGI_DIR)\libfcgi\Release\libfcgi.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(FCGI_DIR)\include\*.h $(OUTPUT_DIR)\include
    cd $(BASE_DIR)
!ELSE
    @echo $(FCGI_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(GIF_LIB):
!IFDEF GIF_ENABLED
    if not exist $(GIFLIB_DIR) git clone -b $(GIFLIB_BRANCH) $(GIFLIB_SRC) $(GIFLIB_DIR)
    cd $(GIFLIB_DIR)
    git reset --hard HEAD
    git checkout $(GIFLIB_BRANCH)
    xcopy /Y $(BASE_DIR)\support\fontconfig\unistd.h $(BASE_DIR)\$(GIFLIB_DIR)\lib
    cd lib
    powershell -Command "(gc makefile.ms) -replace 'dev2gif.obj \\', '\' | Out-File -encoding ASCII makefile.ms"
    powershell -Command "(gc makefile.ms) -replace 'getarg.obj \\', '\' | Out-File -encoding ASCII makefile.ms"
    powershell -Command "(gc makefile.ms) -replace 'qprintf.obj \\', '\' | Out-File -encoding ASCII makefile.ms"
!IFNDEF NO_CLEAN
    nmake /f makefile.ms clean
!ENDIF
!IFNDEF NO_BUILD
    nmake /f makefile.ms
!ENDIF
!IFNDEF NO_COPY
    xcopy /Y giflib.lib $(OUTPUT_DIR)\lib
    xcopy /Y gif_lib.h $(OUTPUT_DIR)\include
!ENDIF
    cd $(BASE_DIR)
!ELSE
    @echo $(GIF_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(BOOST_HEADERS):
!IFDEF BOOST_ENABLED
    if not exist $(BOOST_DIR) git clone -b $(BOOST_BRANCH) $(BOOST_SRC) $(BOOST_DIR)
    cd $(BOOST_DIR)
    git reset --hard HEAD
    git checkout $(BOOST_BRANCH)
    git submodule update --init --recursive
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    rem $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(BOOST_DIR)\$(CMAKE_BUILDDIR)\install"
    rem $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install  
!ENDIF
    cd $(BASE_DIR)\$(BOOST_DIR)\libs
    if not exist $(OUTPUT_DIR)\include\boost mkdir $(OUTPUT_DIR)\include\boost
    -for /R %%a IN (.) DO xcopy /Y /S %%a\include\boost\*.hpp $(OUTPUT_DIR)\include\boost
    cd $(BASE_DIR)
!ELSE
    @echo $(BOOST_HEADERS) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF


$(LIBKML_LIBS): $(URIPARSER_LIB) $(EXPAT_LIB) $(ZLIB_LIB) $(BOOST_HEADERS)
!IFDEF LIBKML_ENABLED
    if not exist $(LIBKML_DIR) git clone -b $(LIBKML_BRANCH) $(LIBKML_SRC) $(LIBKML_DIR)
    cd $(LIBKML_DIR)
    git reset --hard HEAD
    git checkout $(LIBKML_BRANCH)
    cd src\kml\base
    powershell -Command "(gc file_win32.cc) -replace 'L''''', 'L''\0''' | Out-File -encoding ASCII file_win32.cc"
    cd ..\..\..
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(LIBKML_DIR)\$(CMAKE_BUILDDIR)\install" "-DCMAKE_CXX_FLAGS=/DWIN32 /D_WINDOWS /W3 /GR /EHsc /DURI_STATIC_BUILD"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target install  
!ENDIF
    xcopy /Y install\lib\*.lib $(OUTPUT_DIR)\lib
    xcopy /Y /S install\lib\*.pc $(OUTPUT_DIR)\lib
    xcopy /Y /S install\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y /S install\include\*.hpp $(OUTPUT_DIR)\include
    xcopy /Y /S install\*.cmake $(OUTPUT_DIR)
    cd $(BASE_DIR)
!ELSE
    @echo $(LIBKML_LIBS) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(MYSQL_LIB): $(OPENSSL_LIB)
!IFDEF LIBKML_ENABLED
    if not exist $(MYSQL_DIR) git clone -b $(MYSQL_BRANCH) $(MYSQL_SRC) $(MYSQL_DIR)
    cd $(MYSQL_DIR)
    git reset --hard HEAD
    git checkout $(MYSQL_BRANCH)
!IFNDEF NO_CLEAN
    if exist $(CMAKE_BUILDDIR) rd /Q /S $(CMAKE_BUILDDIR)
!ENDIF
    if not exist $(CMAKE_BUILDDIR) mkdir $(CMAKE_BUILDDIR)
	cd $(CMAKE_BUILDDIR)
!IFNDEF NO_BUILD
    $(CMAKE_EXE) ..\ -G $(CMAKE_GENERATOR) "-DCMAKE_PREFIX_PATH=$(OUTPUT_DIR)" "-DCMAKE_INSTALL_PREFIX=$(BASE_DIR)\$(MYSQL_DIR)\$(CMAKE_BUILDDIR)\install" "-DDOWNLOAD_BOOST=1" "-DWITH_BOOST=$(BASE_DIR)\src\mysql-boost" "-DWITHOUT_SERVER=1"
    $(CMAKE_EXE) --build . --config $(BUILD_CONFIG) --target libmysql  
!ENDIF
    xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\$(CMAKE_BUILDDIR)\libmysql\Release\*.lib $(OUTPUT_DIR)\lib
	xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\$(CMAKE_BUILDDIR)\libmysql\Release\*.dll $(OUTPUT_DIR)\bin
	xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\include\*.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\libbinlogevents\export\*.h $(OUTPUT_DIR)\include
	xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\$(CMAKE_BUILDDIR)\include\my*.h $(OUTPUT_DIR)\include
	if not exist $(OUTPUT_DIR)\include\mysql mkdir $(OUTPUT_DIR)\include\mysql
    xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\include\mysql\*.h $(OUTPUT_DIR)\include\mysql
	if not exist $(OUTPUT_DIR)\include\mysql\psi mkdir $(OUTPUT_DIR)\include\mysql\psi
    xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\include\mysql\psi\*.h $(OUTPUT_DIR)\include\mysql\psi
    if not exist $(OUTPUT_DIR)\include\atomic mkdir $(OUTPUT_DIR)\include\atomic
    xcopy /Y $(BASE_DIR)\$(MYSQL_DIR)\include\atomic\*.h $(OUTPUT_DIR)\include\atomic
    cd $(BASE_DIR)
!ELSE
    @echo $(MYSQL_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(OGDI_LIB): $(ZLIB_LIB) $(LIBEXPAT_LIB) $(MSVCRT_DLL)
!IFDEF OGDI_ENABLED
    if not exist $(OGDI_DIR) git clone -b $(OGDI_BRANCH) $(OGDI_SRC) $(OGDI_DIR)
    cd $(OGDI_DIR)
    git reset --hard HEAD
    git checkout $(OGDI_BRANCH)
    
!IFDEF WIN64
    powershell -Command "(gc makefile) -replace [regex]::escape('ifeq ($$(TARGET),win32)'), 'ifeq ($$(TARGET),win64)' | Out-File -encoding ASCII makefile"
    cd config
    powershell -Command "(gc win64.mak) -replace [regex]::escape('$$(TOPDIR)/config/mkinstalldirs'), 'mkdir -p ' | Out-File -encoding ASCII win64.mak"
!ELSE
    cd config
    powershell -Command "(gc win32.mak) -replace [regex]::escape('$$(TOPDIR)/config/mkinstalldirs'), 'mkdir -p ' | Out-File -encoding ASCII win32.mak"
!ENDIF
    powershell -Command "(gc common.mak.in) -replace [regex]::escape('$$(TOPDIR)/external/zlib'), '$(OUTPUT_DIR:\=/)/include' | Out-File -encoding ASCII common.mak.in"
    powershell -Command "(gc common.mak.in) -replace [regex]::escape('$$(TOPDIR)/external/expat'), '$(OUTPUT_DIR:\=/)/include' | Out-File -encoding ASCII common.mak.in"
    powershell -Command "(gc common.mak.in) -replace [regex]::escape('$$(LINKDIR)$$(LIB_SW)zlib_ogdi$$(OGDI_VERSION)$$(LIB_SUFFIX)'), '$(ZLIB_LIB:\=/)' | Out-File -encoding ASCII common.mak.in"
    powershell -Command "(gc common.mak.in) -replace [regex]::escape('$$(LINKDIR)$$(LIB_SW)expat_ogdi$$(OGDI_VERSION)$$(LIB_SUFFIX)'), '$(LIBEXPAT_LIB:\=/)' | Out-File -encoding ASCII common.mak.in"
    powershell -Command "(gc common.mak.in) -replace [regex]::escape('$$(TOPDIR)/include/$$(TARGET)'), '$$(TOPDIR)/include/win32' | Out-File -encoding ASCII common.mak.in"
    cd ..
    cd ogdi\c-api
!IFNDEF NO_BUILD
    powershell -Command "(gc ogdi.def) -replace 'pj_free', '' | Out-File -encoding ASCII ogdi.def"
    powershell -Command "(gc ogdi.def) -replace 'pj_init', '' | Out-File -encoding ASCII ogdi.def"
    powershell -Command "(gc ogdi.def) -replace 'pj_inv', '' | Out-File -encoding ASCII ogdi.def"
    powershell -Command "(gc ogdi.def) -replace 'pj_fwd', '' | Out-File -encoding ASCII ogdi.def"
    powershell -Command "(gc ogdi.def) -replace 'set_rtodms', '' | Out-File -encoding ASCII ogdi.def"
    powershell -Command "(gc ogdi.def) -replace 'rtodms', '' | Out-File -encoding ASCII ogdi.def"
    cd ..
    cd ..
!ENDIF
    echo INCLUDE='$(INCLUDE)' > build.sh
    echo export INCLUDE >> build.sh
    echo LIB='$(LIB)' >> build.sh
    echo export LIB >> build.sh
    echo LIBPATH='$(LIBPATH)' >> build.sh
    echo export LIBPATH >> build.sh
    for /f "usebackq tokens=*" %i in (`where cl.exe`) do echo COMPILERPATH=`cygpath -u "%~dpi."` >> build.sh
    echo PATH="$$COMPILERPATH":"$$PATH" >> build.sh
    echo TOPDIR=$(BASE_DIR:\=/)/$(OGDI_DIR:\=/) >> build.sh
    echo export TOPDIR >> build.sh
    echo OUTPUTDIR=`cygpath -u "$(OUTPUT_DIR)"` >> build.sh
    rem if exist $(BASE_DIR)\$(OGDI_DIR)\config\common.mak del $(BASE_DIR)\$(OGDI_DIR)\config\common.mak
!IFDEF WIN64
    echo TARGET=win64 >> build.sh
!ELSE
    echo TARGET=win32 >> build.sh
!ENDIF
    echo export TARGET >> build.sh
    echo cd $$TOPDIR >> build.sh
!IFNDEF NO_CLEAN
    echo make clean >> build.sh
!ENDIF
    echo make >> build.sh
!IFDEF WIN64
    echo cp -f $$TOPDIR/bin/win64/ogdi.dll $$OUTPUTDIR/bin >> build.sh
    echo cp -f $$TOPDIR/lib/win64/ogdi.lib $$OUTPUTDIR/lib >> build.sh
!ELSE
    echo cp -f $$TOPDIR/bin/win32/ogdi.dll $$OUTPUTDIR/bin >> build.sh
    echo cp -f $$TOPDIR/lib/win32/ogdi.lib $$OUTPUTDIR/lib >> build.sh
!ENDIF
    echo cp -f $$TOPDIR/ogdi/include/ecs*.h $$OUTPUTDIR/include >> build.sh
    $(CYGWIN_DIR)\bin\dos2unix.exe build.sh
    $(CYGWIN_DIR)\bin\chmod.exe +rwxrwxrwx ./build.sh
    echo run the following command from a cygwin shell!!! & $(CYGWIN_DIR)\bin\cygpath.exe -u "$(BASE_DIR)\$(OGDI_DIR)\build.sh" & exit 1
    cd $(BASE_DIR)
!ELSE
    @echo $(OGDI_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF
    
$(LIBICONV_LIB):
!IFDEF LIBICONV_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(LIBICONV_DIR) mkdir $(LIBICONV_DIR)
    cd $(LIBICONV_DIR)
    if not exist $(LIBICONV_VER).tar.gz $(CURL_EXE) -L -k -o "$(LIBICONV_VER).tar.gz" "$(LIBICONV_SRC)"
!IFNDEF NO_CLEAN
    if exist $(LIBICONV_VER) rd /Q /S $(LIBICONV_VER)
!ENDIF
    if not exist $(LIBICONV_VER) 7z e -y $(LIBICONV_VER).tar.gz && 7z x -y $(LIBICONV_VER).tar
    cd $(LIBICONV_VER)
    cd libcharset
    cd include
    powershell -Command "(gc libcharset.h.in) -replace 'extern void libcharset_set_relocation_prefix', 'extern LIBCHARSET_DLL_EXPORTED void libcharset_set_relocation_prefix' | Out-File -encoding ASCII libcharset.h.in"
    $(CYGWIN_DIR)\bin\dos2unix.exe libcharset.h.in
    cd ..
    cd ..
    cd src
    powershell -Command "(gc Makefile.in) -replace '--output-format=coff', '$$(RCFLAGS)' | Out-File -encoding ASCII Makefile.in"
    cd ..
    cd lib
    powershell -Command "(gc Makefile.in) -replace '--output-format=coff', '$$(RCFLAGS)' | Out-File -encoding ASCII Makefile.in"
    cd ..

    echo INCLUDE='$(INCLUDE)' >build-aux\vcvars.sh
    echo LIB='$(LIB)' >>build-aux\vcvars.sh
    echo LIBPATH='$(LIBPATH)' >>build-aux\vcvars.sh
    for /f "usebackq tokens=*" %i in (`where cl.exe`) do echo COMPILERPATH=`cygpath -u "%~dpi."` >>build-aux\vcvars.sh
    echo PATH="$$COMPILERPATH":"$$PATH" >>build-aux\vcvars.sh
    echo SRCDIR=`cygpath -u "$(BASE_DIR)\$(LIBICONV_DIR)\$(LIBICONV_VER)"` >>build-aux\vcvars.sh
    echo OUTPUTDIR=`cygpath -u "$(OUTPUT_DIR)"` >>build-aux\vcvars.sh
!IFDEF WIN64
    echo CONFIGHOST=x86_64-w64-mingw32 >>build-aux\vcvars.sh
    echo RCFLAGS='--output-format=coff --target=pe-x86-64' >>build-aux\vcvars.sh
!ELSE
    echo CONFIGHOST=i686-w64-mingw32 >>build-aux\vcvars.sh
    echo RCFLAGS='--output-format=coff --target=pe-i386' >>build-aux\vcvars.sh
!ENDIF
    echo export INCLUDE LIB LIBPATH PATH RCFLAGS >>build-aux\vcvars.sh

    echo cd $$SRCDIR >>build-aux\vcvars.sh
    echo ./configure --host=$$CONFIGHOST --prefix=$$SRCDIR/install CC="$$SRCDIR/build-aux/compile cl -nologo" CFLAGS="-MD" CXX="$$SRCDIR/build-aux/compile cl -nologo" CXXFLAGS="-MD" CPPFLAGS="-D_WIN32_WINNT=_WIN32_WINNT_WIN7 -I$$OUTPUTDIR/include" LDFLAGS="msvcrt.lib legacy_stdio_definitions.lib -L$$OUTPUTDIR/lib" LD="link" NM="dumpbin -symbols" STRIP=":" AR="$$SRCDIR/build-aux/ar-lib lib" RANLIB=":" >>build-aux\vcvars.sh
!IFNDEF NO_CLEAN
    echo make clean >>build-aux\vcvars.sh
!ENDIF
!IFNDEF NO_BUILD
    echo make >>build-aux\vcvars.sh
    echo make install-lib >>build-aux\vcvars.sh
!ENDIF
    echo cp -f $$SRCDIR/install/bin/*.dll $$OUTPUTDIR/bin >>build-aux\vcvars.sh
    echo cp -f $$SRCDIR/install/lib/iconv.dll.lib $$OUTPUTDIR/lib/iconv.lib >>build-aux\vcvars.sh
    echo cp -f $$SRCDIR/install/include/*.h $$OUTPUTDIR/include >>build-aux\vcvars.sh

    $(CYGWIN_DIR)\bin\dos2unix.exe build-aux\vcvars.sh
    $(CYGWIN_DIR)\bin\chmod.exe +rwxrwxrwx ./build-aux/vcvars.sh
    echo run the following command from a cygwin shell!!! & $(CYGWIN_DIR)\bin\cygpath.exe -u "$(BASE_DIR)\$(LIBICONV_DIR)\$(LIBICONV_VER)\build-aux\vcvars.sh" & exit 1
    cd $(BASE_DIR)
!ELSE
    @echo $(LIBICONV_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF  

$(PIXMAN_LIB): $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL)
!IFDEF PIXMAN_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(PIXMAN_DIR) mkdir $(PIXMAN_DIR)
    cd $(PIXMAN_DIR)
    if not exist $(PIXMAN_VER).tar.gz $(CURL_EXE) -L -k -o "$(PIXMAN_VER).tar.gz" "$(PIXMAN_SRC)"
    if not exist $(PIXMAN_VER) 7z e -y $(PIXMAN_VER).tar.gz && 7z x -y $(PIXMAN_VER).tar
    xcopy /Y $(BASE_DIR)\support\make.exe $(PIXMAN_VER)\pixman
    cd $(PIXMAN_VER)\pixman
!IFNDEF NO_CLEAN
	if exist release del /Q /S release
!ENDIF
!IFNDEF NO_BUILD
!IFDEF WIN64
    make -f Makefile.win32 CFG=release MMX=off SSE2=on SSSE3=off
!ELSE
    make -f Makefile.win32 CFG=release MMX=on SSE2=on SSSE3=off
!ENDIF   
!ENDIF
    xcopy /Y release\pixman-1.lib $(OUTPUT_DIR)\lib
    xcopy /Y pixman.h $(OUTPUT_DIR)\include
    xcopy /Y pixman-version.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(PIXMAN_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(FONTCONFIG_LIB): $(LIBICONV_LIB) $(FREETYPE_LIB) $(LIBXML2_LIB)
!IFDEF FONTCONFIG_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(FONTCONFIG_DIR) mkdir $(FONTCONFIG_DIR)
    cd $(FONTCONFIG_DIR)
    if not exist $(FONTCONFIG_VER).tar.gz $(CURL_EXE) -L -k -o "$(FONTCONFIG_VER).tar.gz" "$(FONTCONFIG_SRC)"
    if not exist $(FONTCONFIG_VER) 7z e -y $(FONTCONFIG_VER).tar.gz && 7z x -y $(FONTCONFIG_VER).tar
    xcopy /Y $(BASE_DIR)\support\fontconfig\* $(FONTCONFIG_VER)\src
    cd $(FONTCONFIG_VER)\src
    powershell -Command "(gc fccache.c) -replace '#include <sys/time.h>', '' | Out-File -encoding ASCII fccache.c"
!IFNDEF NO_CLEAN
	nmake -f Makefile.vc clean
!ENDIF
!IFNDEF NO_BUILD
    nmake -f Makefile.vc OUTPUT_DIR=$(OUTPUT_DIR)
!ENDIF
    xcopy /Y fontconfig.lib $(OUTPUT_DIR)\lib
    if not exist $(OUTPUT_DIR)\include\fontconfig mkdir $(OUTPUT_DIR)\include\fontconfig
    xcopy /Y /S $(BASE_DIR)\$(FONTCONFIG_DIR)\$(FONTCONFIG_VER)\fontconfig\*.h $(OUTPUT_DIR)\include\fontconfig
	cd $(BASE_DIR)
!ELSE
    @echo $(FONTCONFIG_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(CAIRO_LIB): $(PIXMAN_LIB) $(LIBPNG_LIB) $(ZLIB_LIB) $(FREETYPE_LIB) $(LIBXML2_LIB) $(FONTCONFIG_LIB)  $(CURL_EXE) $(CURL_CA_BUNDLE) $(MSVCRT_DLL)
!IFDEF CAIRO_ENABLED
    SET PATH=$(OUTPUT_DIR)\bin;$(PATH)
    SET CURL_CA_BUNDLE=$(CURL_CA_BUNDLE)
    if not exist $(CAIRO_DIR) mkdir $(CAIRO_DIR)
    cd $(CAIRO_DIR)
    if not exist $(CAIRO_VER).tar.xz $(CURL_EXE) -L -k -o "$(CAIRO_VER).tar.xz" "$(CAIRO_SRC)"
    if not exist $(CAIRO_VER) 7z e -y $(CAIRO_VER).tar.xz && 7z x -y $(CAIRO_VER).tar
    xcopy /Y $(BASE_DIR)\support\make.exe $(CAIRO_VER)
    xcopy /Y $(BASE_DIR)\support\make.exe $(CAIRO_VER)\src
    cd $(CAIRO_VER)\build
    powershell -Command "(gc Makefile.win32.features) -replace 'CAIRO_HAS_FT_FONT=0', 'CAIRO_HAS_FT_FONT=1' | Out-File -encoding ASCII Makefile.win32.features"
    powershell -Command "(gc Makefile.win32.features) -replace 'CAIRO_HAS_FC_FONT=0', 'CAIRO_HAS_FC_FONT=1' | Out-File -encoding ASCII Makefile.win32.features"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('-I$$(PIXMAN_PATH)/pixman/'), '-I$$(OUTPUT_DIR)\include' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('$$(PIXMAN_PATH)/pixman/$$(CFG)/pixman-1.lib'), '$$(OUTPUT_DIR)\lib\pixman-1.lib' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('-I$$(LIBPNG_PATH)/'), '-I$$(OUTPUT_DIR)\include -I$$(OUTPUT_DIR)\include\freetype2' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('$$(LIBPNG_PATH)/libpng.lib'), '$$(OUTPUT_DIR)\lib\libpng16_static.lib' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('-I$$(ZLIB_PATH)/'), '-I$$(OUTPUT_DIR)\include' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('$$(ZLIB_PATH)/zdll.lib'), '$$(OUTPUT_DIR)\lib\zlib.lib $$(OUTPUT_DIR)\lib\harfbuzz.lib $$(OUTPUT_DIR)\lib\freetype.lib $$(OUTPUT_DIR)\lib\fontconfig.lib $$(OUTPUT_DIR)\lib\libxml2.lib $$(OUTPUT_DIR)\lib\iconv.lib' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.common) -replace [regex]::escape('@mkdir -p $$(CFG)/`dirname $$<`'), 'if not exist $$(CFG) @mkdir $$(CFG)' | Out-File -encoding ASCII Makefile.win32.common"
    powershell -Command "(gc Makefile.win32.features-h) -replace '""', '' | Out-File -encoding ASCII Makefile.win32.features-h"
    cd ..
    cd src  
    powershell -Command "(gc Makefile.win32) -replace [regex]::escape('@for'), '@rem' | Out-File -encoding ASCII Makefile.win32"
!IFNDEF NO_CLEAN
	if exist release del /Q /S release
!ENDIF
!IFNDEF NO_BUILD
    if not exist release mkdir release
    if not exist release\win32 mkdir release\win32
    -del $(OUTPUT_DIR)\include\cairo*.h
    make -f Makefile.win32 CFG=release OUTPUT_DIR=$(OUTPUT_DIR)
    cd release
	if exist cairo.dll.manifest mt -manifest cairo.dll.manifest -outputresource:cairo.dll;2
	cd .. 
!ENDIF
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\release\cairo.lib $(OUTPUT_DIR)\lib
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\release\cairo.dll $(OUTPUT_DIR)\bin
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-version.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-features.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-deprecated.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-pdf.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-svg.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-ft.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-ps.h $(OUTPUT_DIR)\include
    xcopy /Y $(BASE_DIR)\$(CAIRO_DIR)\$(CAIRO_VER)\src\cairo-win32.h $(OUTPUT_DIR)\include
	cd $(BASE_DIR)
!ELSE
    @echo $(CAIRO_LIB) is outdated, but the build was suppressed! Remove this file to force rebuild.
!ENDIF

$(MAPMANAGER_INSTALLER) : $(MAPSERVER_LIB)
!IF $(MSVC_VER) >= 1600
    if not exist MapManager-$(MS_VERSION) git clone -b ms-$(MS_VERSION) $(MAPMANAGER_SRC) MapManager-$(MS_VERSION)
    cd MapManager-$(MS_VERSION)
    git reset --hard HEAD
    git checkout ms-$(MS_VERSION)
    git pull origin ms-$(MS_VERSION)
    git reset --hard ms-$(MS_VERSION)
!IFNDEF NO_BUILD
!IF $(MSVC_VER) >= 1900
    devenv /rebuild Release MapManager2015.sln /Project Installer
!ELSE
	devenv /rebuild Release MapManager.sln /Project Installer
!ENDIF
	$(BASE_DIR)\cert\sign "$(MAPMANAGER_INSTALLER)"
!ENDIF
!IFNDEF NO_COPY
	rem $(BASE_DIR)\uploadftp $(BASE_DIR)\$(MAPMANAGER_DIR)\Installer\bin\Release\MapManager.msi downloads/release-$(COMPILER_VER)-$(PKG_VERSION)
!ENDIF
	cd $(BASE_DIR)
!ENDIF


