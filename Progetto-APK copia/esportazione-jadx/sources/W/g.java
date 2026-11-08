package W;

import A0.O;
import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMediaList;
import p000a.r;
import p086l.H;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final String[] f7263E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final int[] f7264F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final byte[] f7265G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final d f7266H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final d[][] f7267I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final d[] f7268J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final HashMap[] f7269K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final HashMap[] f7270L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Set f7271M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final HashMap f7272N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Charset f7273O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final byte[] f7274P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final byte[] f7275Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileDescriptor f7290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetManager.AssetInputStream f7291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap[] f7293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f7294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteOrder f7295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7296g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7300k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f7301l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final boolean f7276m = Log.isLoggable("ExifInterface", 3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final List f7277n = Arrays.asList(1, 6, 3, 8);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final List f7278o = Arrays.asList(2, 7, 4, 5);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f7279p = {8, 8, 8};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f7280q = {8};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final byte[] f7281r = {-1, -40, -1};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final byte[] f7282s = {102, 116, 121, 112};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final byte[] f7283t = {109, 105, 102, 49};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final byte[] f7284u = {104, 101, 105, 99};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f7285v = {97, 118, 105, 102};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final byte[] f7286w = {97, 118, 105, 115};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final byte[] f7287x = {79, 76, 89, 77, 80, 0};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final byte[] f7288y = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final byte[] f7289z = {-119, 80, 78, 71, MqttWireMessage.MESSAGE_TYPE_PINGRESP, 10, 26, 10};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final byte[] f7259A = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final byte[] f7260B = {82, 73, 70, 70};

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final byte[] f7261C = {87, 69, 66, 80};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final byte[] f7262D = {69, 88, 73, 70};

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        f7263E = new String[]{HttpUrl.FRAGMENT_ENCODE_SET, "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        f7264F = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        f7265G = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d(256, "ImageWidth", 3, 4), new d(257, "ImageLength", 3, 4), new d("BitsPerSample", MediaPlayer.Event.Opening, 3), new d("Compression", MediaPlayer.Event.Buffering, 3), new d("PhotometricInterpretation", MediaPlayer.Event.Stopped, 3), new d("ImageDescription", MediaPlayer.Event.PausableChanged, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d(MediaPlayer.Event.LengthChanged, "StripOffsets", 3, 4), new d("Orientation", MediaPlayer.Event.Vout, 3), new d("SamplesPerPixel", MediaPlayer.Event.ESDeleted, 3), new d(MediaPlayer.Event.ESSelected, "RowsPerStrip", 3, 4), new d(279, "StripByteCounts", 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", IMediaList.Event.ItemDeleted, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d(40962, "PixelXDimension", 3, 4), new d(40963, "PixelYDimension", 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d(50720, "DefaultCropSize", 3, 4)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d(2, "GPSLatitude", 5, 10), new d("GPSLongitudeRef", 3, 2), new d(4, "GPSLongitude", 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d(256, "ThumbnailImageWidth", 3, 4), new d(257, "ThumbnailImageLength", 3, 4), new d("BitsPerSample", MediaPlayer.Event.Opening, 3), new d("Compression", MediaPlayer.Event.Buffering, 3), new d("PhotometricInterpretation", MediaPlayer.Event.Stopped, 3), new d("ImageDescription", MediaPlayer.Event.PausableChanged, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d(MediaPlayer.Event.LengthChanged, "StripOffsets", 3, 4), new d("ThumbnailOrientation", MediaPlayer.Event.Vout, 3), new d("SamplesPerPixel", MediaPlayer.Event.ESDeleted, 3), new d(MediaPlayer.Event.ESSelected, "RowsPerStrip", 3, 4), new d(279, "StripByteCounts", 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", IMediaList.Event.ItemDeleted, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d(50720, "DefaultCropSize", 3, 4)};
        f7266H = new d("StripOffsets", MediaPlayer.Event.LengthChanged, 3);
        f7267I = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", MediaPlayer.Event.Opening, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        f7268J = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f7269K = new HashMap[10];
        f7270L = new HashMap[10];
        f7271M = Collections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        f7272N = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        f7273O = charsetForName;
        f7274P = "Exif\u0000\u0000".getBytes(charsetForName);
        f7275Q = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i8 = 0;
        while (true) {
            d[][] dVarArr6 = f7267I;
            if (i8 >= dVarArr6.length) {
                HashMap map = f7272N;
                d[] dVarArr7 = f7268J;
                map.put(Integer.valueOf(dVarArr7[0].f7253a), 5);
                map.put(Integer.valueOf(dVarArr7[1].f7253a), 1);
                map.put(Integer.valueOf(dVarArr7[2].f7253a), 2);
                map.put(Integer.valueOf(dVarArr7[3].f7253a), 3);
                map.put(Integer.valueOf(dVarArr7[4].f7253a), 7);
                map.put(Integer.valueOf(dVarArr7[5].f7253a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f7269K[i8] = new HashMap();
            f7270L[i8] = new HashMap();
            for (d dVar : dVarArr6[i8]) {
                f7269K[i8].put(Integer.valueOf(dVar.f7253a), dVar);
                f7270L[i8].put(dVar.f7254b, dVar);
            }
            i8++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00e0 A[Catch: all -> 0x0061, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0061, blocks: (B:17:0x0052, B:19:0x0055, B:26:0x006a, B:32:0x0087, B:39:0x009a, B:45:0x00ad, B:42:0x00a2, B:43:0x00a6, B:44:0x00aa, B:46:0x00b7, B:48:0x00c0, B:50:0x00c6, B:52:0x00cc, B:54:0x00d2, B:59:0x00e0), top: B:71:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    public g(InputStream inputStream) throws IOException {
        d[][] dVarArr = f7267I;
        this.f7293d = new HashMap[dVarArr.length];
        this.f7294e = new HashSet(dVarArr.length);
        this.f7295f = ByteOrder.BIG_ENDIAN;
        if (inputStream == null) {
            throw new NullPointerException("inputStream cannot be null");
        }
        boolean z7 = inputStream instanceof AssetManager.AssetInputStream;
        boolean z8 = f7276m;
        if (z7) {
            this.f7291b = (AssetManager.AssetInputStream) inputStream;
            this.f7290a = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            try {
                Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                this.f7291b = null;
                this.f7290a = fileInputStream.getFD();
            } catch (Exception unused) {
                if (z8) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
                this.f7291b = null;
                this.f7290a = null;
            }
        } else {
            this.f7291b = null;
            this.f7290a = null;
        }
        for (int i8 = 0; i8 < dVarArr.length; i8++) {
            try {
                try {
                    this.f7293d[i8] = new HashMap();
                } catch (IOException e8) {
                    e = e8;
                    if (z8) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                    }
                    a();
                    if (!z8) {
                        return;
                    }
                } catch (UnsupportedOperationException e9) {
                    e = e9;
                    if (z8) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                    }
                    a();
                    if (!z8) {
                        return;
                    }
                }
            } catch (Throwable th) {
                a();
                if (z8) {
                    p();
                }
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
        int iF = f(bufferedInputStream);
        this.f7292c = iF;
        if (iF == 4 || iF == 9 || iF == 13 || iF == 14) {
            b bVar = new b(bufferedInputStream);
            int i9 = this.f7292c;
            if (i9 == 4) {
                e(bVar, 0, 0);
            } else if (i9 == 13) {
                h(bVar);
            } else if (i9 == 9) {
                i(bVar);
            } else if (i9 == 14) {
                l(bVar);
            }
        } else {
            f fVar = new f(bufferedInputStream);
            int i10 = this.f7292c;
            if (i10 == 12 || i10 == 15) {
                d(fVar, i10);
            } else if (i10 == 7) {
                g(fVar);
            } else if (i10 == 10) {
                k(fVar);
            } else {
                j(fVar);
            }
            fVar.E(this.f7297h);
            u(fVar);
        }
        a();
        if (!z8) {
            return;
        }
        p();
    }

    public static ByteOrder q(b bVar) throws IOException {
        short s7 = bVar.readShort();
        boolean z7 = f7276m;
        if (s7 == 18761) {
            if (z7) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s7 == 19789) {
            if (z7) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s7));
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.f7293d;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat("\u0000").getBytes(f7273O);
            map.put("DateTime", new c(2, bytes, bytes.length));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", c.a(0L, this.f7295f));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", c.a(0L, this.f7295f));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", c.a(0L, this.f7295f));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", c.a(0L, this.f7295f));
        }
    }

    public final String b(String str) {
        c cVarC = c(str);
        if (cVarC == null) {
            return null;
        }
        if (!str.equals("GPSTimeStamp")) {
            if (!f7271M.contains(str)) {
                return cVarC.f(this.f7295f);
            }
            try {
                return Double.toString(cVarC.d(this.f7295f));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        int i8 = cVarC.f7249a;
        if (i8 != 5 && i8 != 10) {
            Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i8);
            return null;
        }
        e[] eVarArr = (e[]) cVarC.g(this.f7295f);
        if (eVarArr == null || eVarArr.length != 3) {
            Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
            return null;
        }
        e eVar = eVarArr[0];
        Integer numValueOf = Integer.valueOf((int) (eVar.f7257a / eVar.f7258b));
        e eVar2 = eVarArr[1];
        Integer numValueOf2 = Integer.valueOf((int) (eVar2.f7257a / eVar2.f7258b));
        e eVar3 = eVarArr[2];
        return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f7257a / eVar3.f7258b)));
    }

    public final c c(String str) {
        c cVar;
        int i8;
        c cVar2;
        if ("ISOSpeedRatings".equals(str)) {
            if (f7276m) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && (i8 = this.f7292c) != 4 && ((i8 == 9 || i8 == 15 || i8 == 12 || i8 == 13) && (cVar2 = this.f7301l) != null)) {
            return cVar2;
        }
        for (int i9 = 0; i9 < f7267I.length; i9++) {
            c cVar3 = (c) this.f7293d[i9].get(str);
            if (cVar3 != null) {
                return cVar3;
            }
        }
        if (!"Xmp".equals(str) || (cVar = this.f7301l) == null) {
            return null;
        }
        return cVar;
    }

    public final void d(f fVar, int i8) {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i9;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIC files is supported from SDK 28 and above");
        }
        if (i8 == 15 && i10 < 31) {
            throw new UnsupportedOperationException("Reading EXIF from AVIF files is supported from SDK 31 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                H.q(mediaMetadataRetriever, new a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.f7293d;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", c.c(Integer.parseInt(strExtractMetadata), this.f7295f));
                }
                if (strExtractMetadata3 != null) {
                    mapArr[0].put("ImageLength", c.c(Integer.parseInt(strExtractMetadata3), this.f7295f));
                }
                if (strExtractMetadata2 != null) {
                    int i11 = Integer.parseInt(strExtractMetadata2);
                    if (i11 == 90) {
                        i9 = 6;
                    } else if (i11 != 180) {
                        i9 = i11 != 270 ? 1 : 8;
                    } else {
                        i9 = 3;
                    }
                    mapArr[0].put("Orientation", c.c(i9, this.f7295f));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i12 = Integer.parseInt(strExtractMetadata4);
                    int i13 = Integer.parseInt(strExtractMetadata5);
                    if (i13 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.E(i12);
                    byte[] bArr = new byte[6];
                    fVar.readFully(bArr);
                    int i14 = i12 + 6;
                    int i15 = i13 - 6;
                    if (!Arrays.equals(bArr, f7274P)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i15];
                    fVar.readFully(bArr2);
                    this.f7297h = i14;
                    r(0, bArr2);
                }
                String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(41);
                String strExtractMetadata9 = mediaMetadataRetriever.extractMetadata(42);
                if (strExtractMetadata8 != null && strExtractMetadata9 != null) {
                    int i16 = Integer.parseInt(strExtractMetadata8);
                    int i17 = Integer.parseInt(strExtractMetadata9);
                    long j8 = i16;
                    fVar.E(j8);
                    byte[] bArr3 = new byte[i17];
                    fVar.readFully(bArr3);
                    this.f7301l = new c(j8, bArr3, 1, i17);
                }
                if (f7276m) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata3 + ", rotation " + strExtractMetadata2);
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } catch (RuntimeException e8) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e8);
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:55:0x0158 A[LOOP:0: B:10:0x0034->B:55:0x0158, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x009e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a1. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a4. Please report as an issue. */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1095)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final void e(W.b r23, int r24, int r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: W.g.e(W.b, int, int):void");
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0136 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:117:0x0156  */
    /* JADX WARN: Code duplicated, block: B:122:0x0162  */
    /* JADX WARN: Code duplicated, block: B:125:0x0169 A[LOOP:3: B:120:0x015d->B:125:0x0169, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:129:0x0172  */
    /* JADX WARN: Code duplicated, block: B:132:0x017c A[LOOP:4: B:127:0x016d->B:132:0x017c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:135:0x0182 A[LOOP:2: B:115:0x0151->B:135:0x0182, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:154:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x0185 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x015c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x016c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x017b A[EDGE_INSN: B:168:0x017b->B:131:0x017b BREAK  A[LOOP:3: B:120:0x015d->B:125:0x0169], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x017b A[EDGE_INSN: B:170:0x017b->B:131:0x017b BREAK  A[LOOP:3: B:120:0x015d->B:125:0x0169], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:80:0x0101 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:97:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0130  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    public final int f(BufferedInputStream bufferedInputStream) throws Throwable {
        ?? r7;
        b bVar;
        int i8;
        b bVar2;
        b bVar3;
        b bVar4;
        b bVar5;
        int i9;
        byte[] bArr;
        int i10;
        byte[] bArr2;
        int i11;
        byte[] bArr3;
        b bVar6;
        boolean z7;
        short s7;
        boolean z8;
        long j8;
        bufferedInputStream.mark(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
        byte[] bArr4 = new byte[DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT];
        bufferedInputStream.read(bArr4);
        bufferedInputStream.reset();
        int i12 = 0;
        while (true) {
            byte[] bArr5 = f7281r;
            if (i12 >= bArr5.length) {
                return 4;
            }
            if (bArr4[i12] != bArr5[i12]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i13 = 0; i13 < bytes.length; i13++) {
                    byte b8 = bArr4[i13];
                    ?? r8 = bytes[i13];
                    try {
                        if (b8 != r8) {
                            try {
                                bVar = new b(bArr4);
                                try {
                                    long j9 = bVar.readInt();
                                    byte[] bArr6 = new byte[4];
                                    bVar.readFully(bArr6);
                                    if (Arrays.equals(bArr6, f7282s)) {
                                        if (j9 == 1) {
                                            j9 = bVar.readLong();
                                            j8 = 16;
                                            if (j9 < 16) {
                                            }
                                        } else {
                                            j8 = 8;
                                        }
                                        long j10 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
                                        if (j9 > j10) {
                                            j9 = j10;
                                        }
                                        long j11 = j9 - j8;
                                        if (j11 >= 8) {
                                            byte[] bArr7 = new byte[4];
                                            long j12 = 0;
                                            boolean z9 = false;
                                            boolean z10 = false;
                                            boolean z11 = false;
                                            while (true) {
                                                if (j12 < j11 / 4) {
                                                    try {
                                                        bVar.readFully(bArr7);
                                                        if (j12 != 1) {
                                                            if (Arrays.equals(bArr7, f7283t)) {
                                                                z9 = true;
                                                            } else if (Arrays.equals(bArr7, f7284u)) {
                                                                z10 = true;
                                                            } else if (Arrays.equals(bArr7, f7285v) || Arrays.equals(bArr7, f7286w)) {
                                                                z11 = true;
                                                            }
                                                            if (z9) {
                                                                if (z10) {
                                                                    bVar.close();
                                                                    i8 = 12;
                                                                } else if (z11) {
                                                                    bVar.close();
                                                                    i8 = 15;
                                                                }
                                                                if (i8 != 0) {
                                                                    return i8;
                                                                }
                                                                try {
                                                                    try {
                                                                        try {
                                                                            bVar3 = new b(bArr4);
                                                                            try {
                                                                                ByteOrder byteOrderQ = q(bVar3);
                                                                                this.f7295f = byteOrderQ;
                                                                                bVar3.f7246I = byteOrderQ;
                                                                                s7 = bVar3.readShort();
                                                                                if (s7 != 20306 || s7 == 21330) {
                                                                                    z8 = true;
                                                                                } else {
                                                                                    z8 = false;
                                                                                }
                                                                                bVar3.close();
                                                                                if (z8) {
                                                                                    return 7;
                                                                                }
                                                                                while (true) {
                                                                                    bArr = f7289z;
                                                                                    if (i9 >= bArr.length) {
                                                                                        return 13;
                                                                                    }
                                                                                    if (bArr4[i9] != bArr[i9]) {
                                                                                        i10 = 0;
                                                                                        while (true) {
                                                                                            bArr2 = f7260B;
                                                                                            if (i10 >= bArr2.length) {
                                                                                                i11 = 0;
                                                                                                while (true) {
                                                                                                    bArr3 = f7261C;
                                                                                                    if (i11 >= bArr3.length) {
                                                                                                        return 14;
                                                                                                    }
                                                                                                    if (bArr4[bArr2.length + i11 + 4] != bArr3[i11]) {
                                                                                                        break;
                                                                                                    }
                                                                                                    i11++;
                                                                                                }
                                                                                            } else {
                                                                                                if (bArr4[i10] != bArr2[i10]) {
                                                                                                    break;
                                                                                                }
                                                                                                i10++;
                                                                                            }
                                                                                        }
                                                                                        return 0;
                                                                                    }
                                                                                    i9++;
                                                                                }
                                                                            } catch (Exception unused) {
                                                                                if (bVar3 != null) {
                                                                                    bVar3.close();
                                                                                }
                                                                            } catch (Throwable th) {
                                                                                th = th;
                                                                                bVar2 = bVar3;
                                                                                if (bVar2 != null) {
                                                                                    bVar2.close();
                                                                                }
                                                                                throw th;
                                                                            }
                                                                        } catch (Exception unused2) {
                                                                            bVar3 = null;
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            bVar2 = null;
                                                                        }
                                                                        ByteOrder byteOrderQ2 = q(bVar6);
                                                                        this.f7295f = byteOrderQ2;
                                                                        bVar6.f7246I = byteOrderQ2;
                                                                        if (bVar6.readShort() == 85) {
                                                                            z7 = true;
                                                                        } else {
                                                                            z7 = false;
                                                                        }
                                                                        bVar6.close();
                                                                        if (z7) {
                                                                            return 10;
                                                                        }
                                                                    } catch (Exception unused3) {
                                                                        bVar5 = bVar6;
                                                                        if (bVar5 != null) {
                                                                            bVar5.close();
                                                                        }
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        bVar4 = bVar6;
                                                                        if (bVar4 != null) {
                                                                            bVar4.close();
                                                                        }
                                                                        throw th;
                                                                    }
                                                                    bVar6 = new b(bArr4);
                                                                } catch (Exception unused4) {
                                                                    bVar5 = null;
                                                                } catch (Throwable th4) {
                                                                    th = th4;
                                                                    bVar4 = null;
                                                                }
                                                                i9 = 0;
                                                            } else {
                                                                continue;
                                                            }
                                                        }
                                                        j12++;
                                                    } catch (EOFException unused5) {
                                                        bVar.close();
                                                        i8 = 0;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } catch (Exception e8) {
                                    e = e8;
                                    if (f7276m) {
                                        Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                                    }
                                    if (bVar != null) {
                                    }
                                    i8 = 0;
                                    if (i8 != 0) {
                                        return i8;
                                    }
                                    bVar3 = new b(bArr4);
                                    ByteOrder byteOrderQ3 = q(bVar3);
                                    this.f7295f = byteOrderQ3;
                                    bVar3.f7246I = byteOrderQ3;
                                    s7 = bVar3.readShort();
                                    if (s7 != 20306) {
                                        z8 = true;
                                    } else {
                                        z8 = true;
                                    }
                                    bVar3.close();
                                    if (z8) {
                                        return 7;
                                    }
                                    bVar6 = new b(bArr4);
                                    ByteOrder byteOrderQ4 = q(bVar6);
                                    this.f7295f = byteOrderQ4;
                                    bVar6.f7246I = byteOrderQ4;
                                    if (bVar6.readShort() == 85) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    bVar6.close();
                                    if (z7) {
                                        return 10;
                                    }
                                    i9 = 0;
                                    while (true) {
                                        bArr = f7289z;
                                        if (i9 >= bArr.length) {
                                            return 13;
                                        }
                                        if (bArr4[i9] != bArr[i9]) {
                                            i10 = 0;
                                            while (true) {
                                                bArr2 = f7260B;
                                                if (i10 >= bArr2.length) {
                                                    i11 = 0;
                                                    while (true) {
                                                        bArr3 = f7261C;
                                                        if (i11 >= bArr3.length) {
                                                            return 14;
                                                        }
                                                        if (bArr4[bArr2.length + i11 + 4] != bArr3[i11]) {
                                                            break;
                                                            break;
                                                        }
                                                        i11++;
                                                    }
                                                } else {
                                                    if (bArr4[i10] != bArr2[i10]) {
                                                        break;
                                                        break;
                                                    }
                                                    i10++;
                                                }
                                            }
                                            return 0;
                                        }
                                        i9++;
                                    }
                                }
                            } catch (Exception e9) {
                                e = e9;
                                bVar = null;
                            } catch (Throwable th5) {
                                th = th5;
                                r7 = 0;
                                if (r7 != 0) {
                                    r7.close();
                                }
                                throw th;
                            }
                            bVar.close();
                            i8 = 0;
                            if (i8 != 0) {
                                return i8;
                            }
                            bVar3 = new b(bArr4);
                            ByteOrder byteOrderQ5 = q(bVar3);
                            this.f7295f = byteOrderQ5;
                            bVar3.f7246I = byteOrderQ5;
                            s7 = bVar3.readShort();
                            if (s7 != 20306) {
                                z8 = true;
                            } else {
                                z8 = true;
                            }
                            bVar3.close();
                            if (z8) {
                                return 7;
                            }
                            bVar6 = new b(bArr4);
                            ByteOrder byteOrderQ6 = q(bVar6);
                            this.f7295f = byteOrderQ6;
                            bVar6.f7246I = byteOrderQ6;
                            if (bVar6.readShort() == 85) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            bVar6.close();
                            if (z7) {
                                return 10;
                            }
                            i9 = 0;
                            while (true) {
                                bArr = f7289z;
                                if (i9 >= bArr.length) {
                                    return 13;
                                }
                                if (bArr4[i9] != bArr[i9]) {
                                    i10 = 0;
                                    while (true) {
                                        bArr2 = f7260B;
                                        if (i10 >= bArr2.length) {
                                            i11 = 0;
                                            while (true) {
                                                bArr3 = f7261C;
                                                if (i11 >= bArr3.length) {
                                                    return 14;
                                                }
                                                if (bArr4[bArr2.length + i11 + 4] != bArr3[i11]) {
                                                    break;
                                                    break;
                                                }
                                                i11++;
                                            }
                                        } else {
                                            if (bArr4[i10] != bArr2[i10]) {
                                                break;
                                                break;
                                            }
                                            i10++;
                                        }
                                    }
                                    return 0;
                                }
                                i9++;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        r7 = r8;
                    }
                }
                return 9;
            }
            i12++;
        }
    }

    public final void g(f fVar) throws IOException {
        int i8;
        int i9;
        j(fVar);
        HashMap[] mapArr = this.f7293d;
        c cVar = (c) mapArr[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f7252d);
            fVar2.f7246I = this.f7295f;
            byte[] bArr = f7287x;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.E(0L);
            byte[] bArr3 = f7288y;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.E(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.E(12L);
            }
            s(fVar2, 6);
            c cVar2 = (c) mapArr[7].get("PreviewImageStart");
            c cVar3 = (c) mapArr[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", cVar2);
                mapArr[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) mapArr[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.g(this.f7295f);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i10 = iArr[2];
                int i11 = iArr[0];
                if (i10 <= i11 || (i8 = iArr[3]) <= (i9 = iArr[1])) {
                    return;
                }
                int i12 = (i10 - i11) + 1;
                int i13 = (i8 - i9) + 1;
                if (i12 < i13) {
                    int i14 = i12 + i13;
                    i13 = i14 - i13;
                    i12 = i14 - i13;
                }
                c cVarC = c.c(i12, this.f7295f);
                c cVarC2 = c.c(i13, this.f7295f);
                mapArr[0].put("ImageWidth", cVarC);
                mapArr[0].put("ImageLength", cVarC2);
            }
        }
    }

    public final void h(b bVar) throws IOException {
        if (f7276m) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.f7246I = ByteOrder.BIG_ENDIAN;
        int i8 = bVar.f7245H;
        bVar.k(f7289z.length);
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            if (z7 && z8) {
                return;
            }
            try {
                int i9 = bVar.readInt();
                int i10 = bVar.readInt();
                int i11 = bVar.f7245H;
                int i12 = i11 + i9 + 4;
                int i13 = i11 - i8;
                if (i13 == 16 && i10 != 1229472850) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                }
                if (i10 == 1229278788) {
                    return;
                }
                if (i10 == 1700284774 && !z7) {
                    this.f7297h = i13;
                    byte[] bArr = new byte[i9];
                    bVar.readFully(bArr);
                    int i14 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(i10 >>> 24);
                    crc32.update(i10 >>> 16);
                    crc32.update(i10 >>> 8);
                    crc32.update(i10);
                    crc32.update(bArr);
                    if (((int) crc32.getValue()) != i14) {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i14 + ", calculated CRC value: " + crc32.getValue());
                    }
                    r(0, bArr);
                    x();
                    u(new b(bArr));
                    z7 = true;
                } else if (i10 == 1767135348 && !z8) {
                    byte[] bArr2 = f7259A;
                    if (i9 >= bArr2.length) {
                        int length = bArr2.length;
                        byte[] bArr3 = new byte[length];
                        bVar.readFully(bArr3);
                        if (Arrays.equals(bArr3, bArr2)) {
                            int i15 = bVar.f7245H - i8;
                            int i16 = i9 - length;
                            byte[] bArr4 = new byte[i16];
                            bVar.readFully(bArr4);
                            this.f7301l = new c(i15, bArr4, 1, i16);
                            z8 = true;
                        }
                    }
                }
                bVar.k(i12 - bVar.f7245H);
            } catch (EOFException e8) {
                throw new IOException("Encountered corrupt PNG file.", e8);
            }
        }
    }

    public final void i(b bVar) throws IOException {
        boolean z7 = f7276m;
        if (z7) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + bVar);
        }
        bVar.k(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.readFully(bArr);
        bVar.readFully(bArr2);
        bVar.readFully(bArr3);
        int i8 = ByteBuffer.wrap(bArr).getInt();
        int i9 = ByteBuffer.wrap(bArr2).getInt();
        int i10 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i9];
        bVar.k(i8 - bVar.f7245H);
        bVar.readFully(bArr4);
        e(new b(bArr4), i8, 5);
        bVar.k(i10 - bVar.f7245H);
        bVar.f7246I = ByteOrder.BIG_ENDIAN;
        int i11 = bVar.readInt();
        if (z7) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i11);
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == f7266H.f7253a) {
                short s7 = bVar.readShort();
                short s8 = bVar.readShort();
                c cVarC = c.c(s7, this.f7295f);
                c cVarC2 = c.c(s8, this.f7295f);
                HashMap[] mapArr = this.f7293d;
                mapArr[0].put("ImageLength", cVarC);
                mapArr[0].put("ImageWidth", cVarC2);
                if (z7) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s7) + ", width: " + ((int) s8));
                    return;
                }
                return;
            }
            bVar.k(unsignedShort2);
        }
    }

    public final void j(f fVar) throws IOException {
        o(fVar);
        s(fVar, 0);
        w(fVar, 0);
        w(fVar, 5);
        w(fVar, 4);
        x();
        if (this.f7292c == 8) {
            HashMap[] mapArr = this.f7293d;
            c cVar = (c) mapArr[1].get("MakerNote");
            if (cVar != null) {
                f fVar2 = new f(cVar.f7252d);
                fVar2.f7246I = this.f7295f;
                fVar2.k(6);
                s(fVar2, 9);
                c cVar2 = (c) mapArr[9].get("ColorSpace");
                if (cVar2 != null) {
                    mapArr[1].put("ColorSpace", cVar2);
                }
            }
        }
    }

    public final void k(f fVar) throws IOException {
        if (f7276m) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + fVar);
        }
        j(fVar);
        HashMap[] mapArr = this.f7293d;
        c cVar = (c) mapArr[0].get("JpgFromRaw");
        if (cVar != null) {
            e(new b(cVar.f7252d), (int) cVar.f7251c, 5);
        }
        c cVar2 = (c) mapArr[0].get("ISO");
        c cVar3 = (c) mapArr[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", cVar2);
    }

    public final void l(b bVar) throws IOException {
        if (f7276m) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.f7246I = ByteOrder.LITTLE_ENDIAN;
        bVar.k(f7260B.length);
        int i8 = bVar.readInt() + 8;
        byte[] bArr = f7261C;
        bVar.k(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                bVar.readFully(bArr2);
                int i9 = bVar.readInt();
                int i10 = length + 8;
                if (Arrays.equals(f7262D, bArr2)) {
                    byte[] bArrCopyOfRange = new byte[i9];
                    bVar.readFully(bArrCopyOfRange);
                    byte[] bArr3 = f7274P;
                    if (com.bumptech.glide.d.q(bArrCopyOfRange, bArr3)) {
                        bArrCopyOfRange = Arrays.copyOfRange(bArrCopyOfRange, bArr3.length, i9);
                    }
                    this.f7297h = i10;
                    r(0, bArrCopyOfRange);
                    u(new b(bArrCopyOfRange));
                    return;
                }
                if (i9 % 2 == 1) {
                    i9++;
                }
                length = i10 + i9;
                if (length == i8) {
                    return;
                }
                if (length > i8) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.k(i9);
            } catch (EOFException e8) {
                throw new IOException("Encountered corrupt WebP file.", e8);
            }
        }
    }

    public final void m(b bVar, HashMap map) throws IOException {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int iE = cVar.e(this.f7295f);
        int iE2 = cVar2.e(this.f7295f);
        if (this.f7292c == 7) {
            iE += this.f7298i;
        }
        if (iE > 0 && iE2 > 0 && this.f7291b == null && this.f7290a == null) {
            bVar.k(iE);
            bVar.readFully(new byte[iE2]);
        }
        if (f7276m) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iE + ", length: " + iE2);
        }
    }

    public final boolean n(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.e(this.f7295f) <= 512 && cVar2.e(this.f7295f) <= 512;
    }

    public final void o(b bVar) throws IOException {
        ByteOrder byteOrderQ = q(bVar);
        this.f7295f = byteOrderQ;
        bVar.f7246I = byteOrderQ;
        int unsignedShort = bVar.readUnsignedShort();
        int i8 = this.f7292c;
        if (i8 != 7 && i8 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i9 = bVar.readInt();
        if (i9 < 8) {
            throw new IOException(r.f("Invalid first Ifd offset: ", i9));
        }
        int i10 = i9 - 8;
        if (i10 > 0) {
            bVar.k(i10);
        }
    }

    public final void p() {
        int i8 = 0;
        while (true) {
            HashMap[] mapArr = this.f7293d;
            if (i8 >= mapArr.length) {
                return;
            }
            StringBuilder sbK = r.k("The size of tag group[", i8, "]: ");
            sbK.append(mapArr[i8].size());
            Log.d("ExifInterface", sbK.toString());
            for (Map.Entry entry : mapArr[i8].entrySet()) {
                c cVar = (c) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + cVar.toString() + ", tagValue: '" + cVar.f(this.f7295f) + "'");
            }
            i8++;
        }
    }

    public final void r(int i8, byte[] bArr) throws IOException {
        f fVar = new f(bArr);
        o(fVar);
        s(fVar, i8);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0224  */
    /* JADX WARN: Code duplicated, block: B:103:0x0228  */
    /* JADX WARN: Code duplicated, block: B:108:0x0235  */
    /* JADX WARN: Code duplicated, block: B:109:0x023a  */
    /* JADX WARN: Code duplicated, block: B:110:0x0246  */
    /* JADX WARN: Code duplicated, block: B:112:0x024d  */
    /* JADX WARN: Code duplicated, block: B:113:0x0268  */
    /* JADX WARN: Code duplicated, block: B:116:0x0274 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:120:0x027c  */
    /* JADX WARN: Code duplicated, block: B:128:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:130:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:133:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:135:0x0319  */
    /* JADX WARN: Code duplicated, block: B:138:0x0324  */
    /* JADX WARN: Code duplicated, block: B:140:0x032c  */
    /* JADX WARN: Code duplicated, block: B:149:0x0356  */
    /* JADX WARN: Code duplicated, block: B:70:0x0160  */
    /* JADX WARN: Code duplicated, block: B:72:0x0167  */
    /* JADX WARN: Code duplicated, block: B:74:0x016d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0175  */
    /* JADX WARN: Code duplicated, block: B:79:0x018b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0195  */
    /* JADX WARN: Code duplicated, block: B:82:0x0197  */
    /* JADX WARN: Code duplicated, block: B:83:0x019d  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:92:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:93:0x0216  */
    /* JADX WARN: Code duplicated, block: B:95:0x021a  */
    /* JADX WARN: Code duplicated, block: B:97:0x021d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0220  */
    /* JADX WARN: Instruction removed from duplicated block: B:130:0x02c2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x0175, please report this as an issue */
    public final void s(f fVar, int i8) throws IOException {
        HashMap[] mapArr;
        HashSet hashSet;
        short s7;
        int i9;
        long j8;
        boolean z7;
        int i10;
        Integer num;
        long j9;
        String str;
        int unsignedShort;
        long j10;
        int i11;
        HashSet hashSet2;
        String strZ;
        int i12;
        Integer numValueOf = Integer.valueOf(fVar.f7245H);
        HashSet hashSet3 = this.f7294e;
        hashSet3.add(numValueOf);
        short s8 = fVar.readShort();
        boolean z8 = f7276m;
        String str2 = "ExifInterface";
        if (z8) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) s8));
        }
        if (s8 <= 0) {
            return;
        }
        short s9 = 0;
        while (true) {
            mapArr = this.f7293d;
            if (s9 >= s8) {
                break;
            }
            int unsignedShort2 = fVar.readUnsignedShort();
            int unsignedShort3 = fVar.readUnsignedShort();
            int i13 = fVar.readInt();
            short s10 = s8;
            long j11 = ((long) fVar.f7245H) + 4;
            d dVar = (d) f7269K[i8].get(Integer.valueOf(unsignedShort2));
            if (z8) {
                Object[] objArr = new Object[5];
                objArr[0] = Integer.valueOf(i8);
                objArr[1] = Integer.valueOf(unsignedShort2);
                objArr[2] = dVar != null ? dVar.f7254b : null;
                objArr[3] = Integer.valueOf(unsignedShort3);
                objArr[4] = Integer.valueOf(i13);
                Log.d(str2, String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr));
            }
            if (dVar == null) {
                if (z8) {
                    Log.d(str2, "Skip the tag entry since tag number is not defined: " + unsignedShort2);
                }
                hashSet = hashSet3;
                s7 = s9;
            } else {
                if (unsignedShort3 > 0) {
                    int[] iArr = f7264F;
                    if (unsignedShort3 < iArr.length) {
                        int i14 = dVar.f7255c;
                        s7 = s9;
                        if (i14 == 7 || unsignedShort3 == 7 || i14 == unsignedShort3 || (i10 = dVar.f7256d) == unsignedShort3) {
                            hashSet = hashSet3;
                        } else {
                            hashSet = hashSet3;
                            if (((i14 != 4 && i10 != 4) || unsignedShort3 != 3) && (((i14 != 9 && i10 != 9) || unsignedShort3 != 8) && ((i14 != 12 && i10 != 12) || unsignedShort3 != 11))) {
                                if (z8) {
                                    Log.d(str2, "Skip the tag entry since data format (" + f7263E[unsignedShort3] + ") is unexpected for tag: " + dVar.f7254b);
                                }
                            }
                        }
                        if (unsignedShort3 == 7) {
                            unsignedShort3 = i14;
                        }
                        i9 = unsignedShort2;
                        int i15 = unsignedShort3;
                        j8 = ((long) i13) * ((long) iArr[unsignedShort3]);
                        if (j8 < 0 || j8 > 2147483647L) {
                            if (z8) {
                                Log.d(str2, "Skip the tag entry since the number of components is invalid: " + i13);
                            }
                            unsignedShort3 = i15;
                            z7 = false;
                        } else {
                            unsignedShort3 = i15;
                            z7 = true;
                        }
                    }
                    if (z7) {
                        if (j8 > 4) {
                            i12 = fVar.readInt();
                            if (z8) {
                                Log.d(str2, "seek to data offset: " + i12);
                            }
                            if (this.f7292c == 7) {
                                if ("MakerNote".equals(dVar.f7254b)) {
                                    this.f7298i = i12;
                                } else if (i8 != 6 && "ThumbnailImage".equals(dVar.f7254b)) {
                                    this.f7299j = i12;
                                    this.f7300k = i13;
                                    c cVarC = c.c(6, this.f7295f);
                                    c cVarA = c.a(this.f7299j, this.f7295f);
                                    c cVarA2 = c.a(this.f7300k, this.f7295f);
                                    mapArr[4].put("Compression", cVarC);
                                    mapArr[4].put("JPEGInterchangeFormat", cVarA);
                                    mapArr[4].put("JPEGInterchangeFormatLength", cVarA2);
                                }
                            }
                            fVar.E(i12);
                        } else {
                            dVar = dVar;
                            str2 = str2;
                            j8 = j8;
                        }
                        num = (Integer) f7272N.get(Integer.valueOf(i9));
                        if (z8) {
                            StringBuilder sb = new StringBuilder("nextIfdType: ");
                            sb.append(num);
                            sb.append(" byteCount: ");
                            j9 = j8;
                            sb.append(j9);
                            Log.d(str2, sb.toString());
                        } else {
                            j9 = j8;
                        }
                        if (num != null) {
                            if (unsignedShort3 != 3) {
                                if (unsignedShort3 == 4) {
                                    j10 = ((long) fVar.readInt()) & 4294967295L;
                                } else if (unsignedShort3 == 8) {
                                    unsignedShort = fVar.readShort();
                                } else if (unsignedShort3 != 9 || unsignedShort3 == 13) {
                                    unsignedShort = fVar.readInt();
                                } else {
                                    j10 = -1;
                                }
                                if (z8) {
                                    Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                                }
                                i11 = fVar.f7248K;
                                if (j10 > 0 || (i11 != -1 && j10 >= i11)) {
                                    hashSet2 = hashSet;
                                    if (z8) {
                                        strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                        if (i11 != -1) {
                                            strZ = strZ + " (total length: " + i11 + ")";
                                        }
                                        Log.d(str2, strZ);
                                    }
                                } else {
                                    hashSet2 = hashSet;
                                    if (!hashSet2.contains(Integer.valueOf((int) j10))) {
                                        fVar.E(j10);
                                        s(fVar, num.intValue());
                                    } else if (z8) {
                                        Log.d(str2, "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j10 + ")");
                                    }
                                }
                                fVar.E(j11);
                                hashSet = hashSet2;
                            } else {
                                unsignedShort = fVar.readUnsignedShort();
                            }
                            j10 = unsignedShort;
                            if (z8) {
                                Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                            }
                            i11 = fVar.f7248K;
                            if (j10 > 0) {
                                hashSet2 = hashSet;
                                if (z8) {
                                    strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                    if (i11 != -1) {
                                        strZ = strZ + " (total length: " + i11 + ")";
                                    }
                                    Log.d(str2, strZ);
                                }
                            } else {
                                hashSet2 = hashSet;
                                if (z8) {
                                    strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                    if (i11 != -1) {
                                        strZ = strZ + " (total length: " + i11 + ")";
                                    }
                                    Log.d(str2, strZ);
                                }
                            }
                            fVar.E(j11);
                            hashSet = hashSet2;
                        } else {
                            d dVar2 = dVar;
                            int i16 = fVar.f7245H + this.f7297h;
                            byte[] bArr = new byte[(int) j9];
                            fVar.readFully(bArr);
                            hashSet = hashSet;
                            c cVar = new c(i16, bArr, unsignedShort3, i13);
                            mapArr[i8].put(dVar2.f7254b, cVar);
                            str = dVar2.f7254b;
                            if ("DNGVersion".equals(str)) {
                                this.f7292c = 3;
                            }
                            if (((!"Make".equals(str) || "Model".equals(str)) && cVar.f(this.f7295f).contains("PENTAX")) || ("Compression".equals(str) && cVar.e(this.f7295f) == 65535)) {
                                this.f7292c = 8;
                            }
                            if (fVar.f7245H != j11) {
                                fVar.E(j11);
                            }
                        }
                    } else {
                        fVar.E(j11);
                        str2 = str2;
                    }
                    s9 = (short) (s7 + 1);
                    str2 = str2;
                    s8 = s10;
                    hashSet3 = hashSet;
                }
                hashSet = hashSet3;
                s7 = s9;
                i9 = unsignedShort2;
                if (z8) {
                    Log.d(str2, "Skip the tag entry since data format is invalid: " + unsignedShort3);
                }
                z7 = false;
                j8 = 0;
                if (z7) {
                    fVar.E(j11);
                    str2 = str2;
                } else {
                    if (j8 > 4) {
                        i12 = fVar.readInt();
                        if (z8) {
                            Log.d(str2, "seek to data offset: " + i12);
                        }
                        if (this.f7292c == 7) {
                            if ("MakerNote".equals(dVar.f7254b)) {
                                this.f7298i = i12;
                            } else if (i8 != 6) {
                            }
                        }
                        fVar.E(i12);
                    } else {
                        dVar = dVar;
                        str2 = str2;
                        j8 = j8;
                    }
                    num = (Integer) f7272N.get(Integer.valueOf(i9));
                    if (z8) {
                        StringBuilder sb2 = new StringBuilder("nextIfdType: ");
                        sb2.append(num);
                        sb2.append(" byteCount: ");
                        j9 = j8;
                        sb2.append(j9);
                        Log.d(str2, sb2.toString());
                    } else {
                        j9 = j8;
                    }
                    if (num != null) {
                        if (unsignedShort3 != 3) {
                            if (unsignedShort3 == 4) {
                                j10 = ((long) fVar.readInt()) & 4294967295L;
                            } else if (unsignedShort3 == 8) {
                                if (unsignedShort3 != 9) {
                                }
                                unsignedShort = fVar.readInt();
                            } else {
                                unsignedShort = fVar.readShort();
                            }
                            if (z8) {
                                Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                            }
                            i11 = fVar.f7248K;
                            if (j10 > 0) {
                                hashSet2 = hashSet;
                                if (z8) {
                                    strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                    if (i11 != -1) {
                                        strZ = strZ + " (total length: " + i11 + ")";
                                    }
                                    Log.d(str2, strZ);
                                }
                            } else {
                                hashSet2 = hashSet;
                                if (z8) {
                                    strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                    if (i11 != -1) {
                                        strZ = strZ + " (total length: " + i11 + ")";
                                    }
                                    Log.d(str2, strZ);
                                }
                            }
                            fVar.E(j11);
                            hashSet = hashSet2;
                        } else {
                            unsignedShort = fVar.readUnsignedShort();
                        }
                        j10 = unsignedShort;
                        if (z8) {
                            Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                        }
                        i11 = fVar.f7248K;
                        if (j10 > 0) {
                            hashSet2 = hashSet;
                            if (z8) {
                                strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                if (i11 != -1) {
                                    strZ = strZ + " (total length: " + i11 + ")";
                                }
                                Log.d(str2, strZ);
                            }
                        } else {
                            hashSet2 = hashSet;
                            if (z8) {
                                strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                if (i11 != -1) {
                                    strZ = strZ + " (total length: " + i11 + ")";
                                }
                                Log.d(str2, strZ);
                            }
                        }
                        fVar.E(j11);
                        hashSet = hashSet2;
                    } else {
                        d dVar3 = dVar;
                        int i17 = fVar.f7245H + this.f7297h;
                        byte[] bArr2 = new byte[(int) j9];
                        fVar.readFully(bArr2);
                        hashSet = hashSet;
                        c cVar2 = new c(i17, bArr2, unsignedShort3, i13);
                        mapArr[i8].put(dVar3.f7254b, cVar2);
                        str = dVar3.f7254b;
                        if ("DNGVersion".equals(str)) {
                            this.f7292c = 3;
                        }
                        if (!"Make".equals(str)) {
                        }
                        this.f7292c = 8;
                        if (fVar.f7245H != j11) {
                            fVar.E(j11);
                        }
                    }
                }
                s9 = (short) (s7 + 1);
                str2 = str2;
                s8 = s10;
                hashSet3 = hashSet;
            }
            i9 = unsignedShort2;
            z7 = false;
            j8 = 0;
            if (z7) {
                fVar.E(j11);
                str2 = str2;
            } else {
                if (j8 > 4) {
                    i12 = fVar.readInt();
                    if (z8) {
                        Log.d(str2, "seek to data offset: " + i12);
                    }
                    if (this.f7292c == 7) {
                        if ("MakerNote".equals(dVar.f7254b)) {
                            this.f7298i = i12;
                        } else if (i8 != 6) {
                        }
                    }
                    fVar.E(i12);
                } else {
                    dVar = dVar;
                    str2 = str2;
                    j8 = j8;
                }
                num = (Integer) f7272N.get(Integer.valueOf(i9));
                if (z8) {
                    StringBuilder sb3 = new StringBuilder("nextIfdType: ");
                    sb3.append(num);
                    sb3.append(" byteCount: ");
                    j9 = j8;
                    sb3.append(j9);
                    Log.d(str2, sb3.toString());
                } else {
                    j9 = j8;
                }
                if (num != null) {
                    if (unsignedShort3 != 3) {
                        if (unsignedShort3 == 4) {
                            j10 = ((long) fVar.readInt()) & 4294967295L;
                        } else if (unsignedShort3 == 8) {
                            if (unsignedShort3 != 9) {
                            }
                            unsignedShort = fVar.readInt();
                        } else {
                            unsignedShort = fVar.readShort();
                        }
                        if (z8) {
                            Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                        }
                        i11 = fVar.f7248K;
                        if (j10 > 0) {
                            hashSet2 = hashSet;
                            if (z8) {
                                strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                if (i11 != -1) {
                                    strZ = strZ + " (total length: " + i11 + ")";
                                }
                                Log.d(str2, strZ);
                            }
                        } else {
                            hashSet2 = hashSet;
                            if (z8) {
                                strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                                if (i11 != -1) {
                                    strZ = strZ + " (total length: " + i11 + ")";
                                }
                                Log.d(str2, strZ);
                            }
                        }
                        fVar.E(j11);
                        hashSet = hashSet2;
                    } else {
                        unsignedShort = fVar.readUnsignedShort();
                    }
                    j10 = unsignedShort;
                    if (z8) {
                        Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(j10), dVar.f7254b));
                    }
                    i11 = fVar.f7248K;
                    if (j10 > 0) {
                        hashSet2 = hashSet;
                        if (z8) {
                            strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                            if (i11 != -1) {
                                strZ = strZ + " (total length: " + i11 + ")";
                            }
                            Log.d(str2, strZ);
                        }
                    } else {
                        hashSet2 = hashSet;
                        if (z8) {
                            strZ = O.z("Skip jump into the IFD since its offset is invalid: ", j10);
                            if (i11 != -1) {
                                strZ = strZ + " (total length: " + i11 + ")";
                            }
                            Log.d(str2, strZ);
                        }
                    }
                    fVar.E(j11);
                    hashSet = hashSet2;
                } else {
                    d dVar4 = dVar;
                    int i18 = fVar.f7245H + this.f7297h;
                    byte[] bArr3 = new byte[(int) j9];
                    fVar.readFully(bArr3);
                    hashSet = hashSet;
                    c cVar3 = new c(i18, bArr3, unsignedShort3, i13);
                    mapArr[i8].put(dVar4.f7254b, cVar3);
                    str = dVar4.f7254b;
                    if ("DNGVersion".equals(str)) {
                        this.f7292c = 3;
                    }
                    if (!"Make".equals(str)) {
                    }
                    this.f7292c = 8;
                    if (fVar.f7245H != j11) {
                        fVar.E(j11);
                    }
                }
            }
            s9 = (short) (s7 + 1);
            str2 = str2;
            s8 = s10;
            hashSet3 = hashSet;
        }
        HashSet hashSet4 = hashSet3;
        String str3 = str2;
        int i19 = fVar.readInt();
        if (z8) {
            Log.d(str3, String.format("nextIfdOffset: %d", Integer.valueOf(i19)));
        }
        long j12 = i19;
        if (j12 <= 0) {
            if (z8) {
                Log.d(str3, "Stop reading file since a wrong offset may cause an infinite loop: " + i19);
                return;
            }
            return;
        }
        if (hashSet4.contains(Integer.valueOf(i19))) {
            if (z8) {
                Log.d(str3, "Stop reading file since re-reading an IFD may cause an infinite loop: " + i19);
                return;
            }
            return;
        }
        fVar.E(j12);
        if (mapArr[4].isEmpty()) {
            s(fVar, 4);
        } else if (mapArr[5].isEmpty()) {
            s(fVar, 5);
        }
    }

    public final void t(int i8, String str, String str2) {
        HashMap[] mapArr = this.f7293d;
        if (mapArr[i8].isEmpty() || mapArr[i8].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i8];
        map.put(str2, (c) map.get(str));
        mapArr[i8].remove(str);
    }

    public final void u(b bVar) throws IOException {
        c cVar;
        int iE;
        HashMap map = this.f7293d[4];
        c cVar2 = (c) map.get("Compression");
        if (cVar2 == null) {
            m(bVar, map);
            return;
        }
        int iE2 = cVar2.e(this.f7295f);
        if (iE2 != 1) {
            if (iE2 == 6) {
                m(bVar, map);
                return;
            } else if (iE2 != 7) {
                return;
            }
        }
        c cVar3 = (c) map.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.g(this.f7295f);
            int[] iArr2 = f7279p;
            if (Arrays.equals(iArr2, iArr) || (this.f7292c == 3 && (cVar = (c) map.get("PhotometricInterpretation")) != null && (((iE = cVar.e(this.f7295f)) == 1 && Arrays.equals(iArr, f7280q)) || (iE == 6 && Arrays.equals(iArr, iArr2))))) {
                c cVar4 = (c) map.get("StripOffsets");
                c cVar5 = (c) map.get("StripByteCounts");
                if (cVar4 == null || cVar5 == null) {
                    return;
                }
                long[] jArrF = com.bumptech.glide.d.f(cVar4.g(this.f7295f));
                long[] jArrF2 = com.bumptech.glide.d.f(cVar5.g(this.f7295f));
                if (jArrF == null || jArrF.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (jArrF2 == null || jArrF2.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (jArrF.length != jArrF2.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j8 = 0;
                for (long j9 : jArrF2) {
                    j8 += j9;
                }
                byte[] bArr = new byte[(int) j8];
                this.f7296g = true;
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < jArrF.length; i10++) {
                    int i11 = (int) jArrF[i10];
                    int i12 = (int) jArrF2[i10];
                    if (i10 < jArrF.length - 1 && i11 + i12 != jArrF[i10 + 1]) {
                        this.f7296g = false;
                    }
                    int i13 = i11 - i8;
                    if (i13 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    try {
                        bVar.k(i13);
                        int i14 = i8 + i13;
                        byte[] bArr2 = new byte[i12];
                        try {
                            bVar.readFully(bArr2);
                            i8 = i14 + i12;
                            System.arraycopy(bArr2, 0, bArr, i9, i12);
                            i9 += i12;
                        } catch (EOFException unused) {
                            Log.d("ExifInterface", "Failed to read " + i12 + " bytes.");
                            return;
                        }
                    } catch (EOFException unused2) {
                        Log.d("ExifInterface", "Failed to skip " + i13 + " bytes.");
                        return;
                    }
                }
                if (this.f7296g) {
                    long j10 = jArrF[0];
                    return;
                }
                return;
            }
        }
        if (f7276m) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void v(int i8, int i9) {
        HashMap[] mapArr = this.f7293d;
        boolean zIsEmpty = mapArr[i8].isEmpty();
        boolean z7 = f7276m;
        if (zIsEmpty || mapArr[i9].isEmpty()) {
            if (z7) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = (c) mapArr[i8].get("ImageLength");
        c cVar2 = (c) mapArr[i8].get("ImageWidth");
        c cVar3 = (c) mapArr[i9].get("ImageLength");
        c cVar4 = (c) mapArr[i9].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (z7) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (z7) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iE = cVar.e(this.f7295f);
        int iE2 = cVar2.e(this.f7295f);
        int iE3 = cVar3.e(this.f7295f);
        int iE4 = cVar4.e(this.f7295f);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i8];
        mapArr[i8] = mapArr[i9];
        mapArr[i9] = map;
    }

    public final void w(f fVar, int i8) throws IOException {
        c cVarC;
        c cVarC2;
        HashMap[] mapArr = this.f7293d;
        c cVar = (c) mapArr[i8].get("DefaultCropSize");
        c cVar2 = (c) mapArr[i8].get("SensorTopBorder");
        c cVar3 = (c) mapArr[i8].get("SensorLeftBorder");
        c cVar4 = (c) mapArr[i8].get("SensorBottomBorder");
        c cVar5 = (c) mapArr[i8].get("SensorRightBorder");
        if (cVar != null) {
            if (cVar.f7249a == 5) {
                e[] eVarArr = (e[]) cVar.g(this.f7295f);
                if (eVarArr == null || eVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                    return;
                }
                cVarC = c.b(eVarArr[0], this.f7295f);
                cVarC2 = c.b(eVarArr[1], this.f7295f);
            } else {
                int[] iArr = (int[]) cVar.g(this.f7295f);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                cVarC = c.c(iArr[0], this.f7295f);
                cVarC2 = c.c(iArr[1], this.f7295f);
            }
            mapArr[i8].put("ImageWidth", cVarC);
            mapArr[i8].put("ImageLength", cVarC2);
            return;
        }
        if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
            int iE = cVar2.e(this.f7295f);
            int iE2 = cVar4.e(this.f7295f);
            int iE3 = cVar5.e(this.f7295f);
            int iE4 = cVar3.e(this.f7295f);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            c cVarC3 = c.c(iE2 - iE, this.f7295f);
            c cVarC4 = c.c(iE3 - iE4, this.f7295f);
            mapArr[i8].put("ImageLength", cVarC3);
            mapArr[i8].put("ImageWidth", cVarC4);
            return;
        }
        c cVar6 = (c) mapArr[i8].get("ImageLength");
        c cVar7 = (c) mapArr[i8].get("ImageWidth");
        if (cVar6 == null || cVar7 == null) {
            c cVar8 = (c) mapArr[i8].get("JPEGInterchangeFormat");
            c cVar9 = (c) mapArr[i8].get("JPEGInterchangeFormatLength");
            if (cVar8 == null || cVar9 == null) {
                return;
            }
            int iE5 = cVar8.e(this.f7295f);
            int iE6 = cVar8.e(this.f7295f);
            fVar.E(iE5);
            byte[] bArr = new byte[iE6];
            fVar.readFully(bArr);
            e(new b(bArr), iE5, i8);
        }
    }

    public final void x() {
        v(0, 5);
        v(0, 4);
        v(5, 4);
        HashMap[] mapArr = this.f7293d;
        c cVar = (c) mapArr[1].get("PixelXDimension");
        c cVar2 = (c) mapArr[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            mapArr[0].put("ImageWidth", cVar);
            mapArr[0].put("ImageLength", cVar2);
        }
        if (mapArr[4].isEmpty() && n(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (!n(mapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        t(0, "ThumbnailOrientation", "Orientation");
        t(0, "ThumbnailImageLength", "ImageLength");
        t(0, "ThumbnailImageWidth", "ImageWidth");
        t(5, "ThumbnailOrientation", "Orientation");
        t(5, "ThumbnailImageLength", "ImageLength");
        t(5, "ThumbnailImageWidth", "ImageWidth");
        t(4, "Orientation", "ThumbnailOrientation");
        t(4, "ImageLength", "ThumbnailImageLength");
        t(4, "ImageWidth", "ThumbnailImageWidth");
    }
}
