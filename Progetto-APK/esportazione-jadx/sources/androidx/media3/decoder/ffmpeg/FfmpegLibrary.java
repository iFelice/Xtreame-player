package androidx.media3.decoder.ffmpeg;

import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p094m0.J;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class FfmpegLibrary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p179x0.b f9406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f9407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f9408c;

    static {
        J.a("media3.decoder.ffmpeg");
        f9406a = new p179x0.b(1, new String[]{"ffmpegJNI"});
        f9408c = -1;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String a(String str) {
        str.getClass();
        byte b8 = -1;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    b8 = 0;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    b8 = 1;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    b8 = 2;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    b8 = 3;
                }
                break;
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    b8 = 4;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    b8 = 5;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    b8 = 6;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b8 = 7;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    b8 = 8;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    b8 = 9;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    b8 = 10;
                }
                break;
            case 1504470054:
                if (str.equals("audio/alac")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b8 = 15;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    b8 = 16;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    b8 = 17;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    b8 = 18;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    b8 = 19;
                }
                break;
        }
        switch (b8) {
            case 0:
            case 12:
                return "eac3";
            case 1:
                return "hevc";
            case 2:
                return "amrwb";
            case 3:
            case 16:
                return "dca";
            case 4:
                return "vorbis";
            case 5:
            case 6:
            case 14:
                return "mp3";
            case 7:
                return "aac";
            case 8:
                return "ac3";
            case 9:
                return "h264";
            case 10:
                return "amrnb";
            case 11:
                return "alac";
            case 13:
                return "flac";
            case 15:
                return "opus";
            case 17:
                return "truehd";
            case 18:
                return "pcm_alaw";
            case 19:
                return "pcm_mulaw";
            default:
                return null;
        }
    }

    public static int b() {
        if (!f9406a.isAvailable()) {
            return -1;
        }
        if (f9408c == -1) {
            f9408c = ffmpegGetInputBufferPaddingSize();
        }
        return f9408c;
    }

    public static String c() {
        if (!f9406a.isAvailable()) {
            return null;
        }
        if (f9407b == null) {
            f9407b = ffmpegGetVersion();
        }
        return f9407b;
    }

    public static boolean d(String str) {
        String strA;
        if (!f9406a.isAvailable() || (strA = a(str)) == null) {
            return false;
        }
        if (ffmpegHasDecoder(strA)) {
            return true;
        }
        x.f("FfmpegLibrary", "No " + strA + " decoder available. Check the FFmpeg build configuration.");
        return false;
    }

    private static native int ffmpegGetInputBufferPaddingSize();

    private static native String ffmpegGetVersion();

    private static native boolean ffmpegHasDecoder(String str);
}
