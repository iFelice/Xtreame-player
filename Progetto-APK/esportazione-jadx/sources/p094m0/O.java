package p094m0;

import N.r;
import android.text.TextUtils;
import com.google.api.Endpoint;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.media.MediaPlayer;
import p117p0.M;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class O {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f26779a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f26780b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static boolean a(String str, String str2) {
        r rVarG;
        int iB;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/ac3":
            case "audio/raw":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (rVarG = g(str2)) == null || (iB = rVarG.b()) == 0 || iB == 16) ? false : true;
            default:
                return false;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : M.d0(str)) {
            String strE = e(str2);
            if (strE != null && k(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static String c(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrD0 = M.d0(str);
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArrD0) {
            if (str2.equals(e(str3))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int d(String str, String str2) {
        r rVarG;
        byte b8 = -1;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    b8 = 0;
                }
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    b8 = 1;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    b8 = 2;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b8 = 3;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    b8 = 4;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    b8 = 5;
                }
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    b8 = 6;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    b8 = 7;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    b8 = 8;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b8 = 9;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    b8 = 10;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
        }
        switch (b8) {
            case 0:
                return 18;
            case 1:
                return 8;
            case 2:
                return 7;
            case 3:
                if (str2 == null || (rVarG = g(str2)) == null) {
                    return 0;
                }
                return rVarG.b();
            case 4:
                return 5;
            case 5:
                return 17;
            case 6:
                return 30;
            case 7:
                return 6;
            case 8:
                return 9;
            case 9:
                return 20;
            case 10:
                return 8;
            case 11:
                return 14;
            default:
                return 0;
        }
    }

    public static String e(String str) {
        r rVarG;
        String strF = null;
        if (str == null) {
            return null;
        }
        String strH0 = k.h0(str.trim());
        if (strH0.startsWith("avc1") || strH0.startsWith("avc3")) {
            return "video/avc";
        }
        if (strH0.startsWith("hev1") || strH0.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (strH0.startsWith("dvav") || strH0.startsWith("dva1") || strH0.startsWith("dvhe") || strH0.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (strH0.startsWith("av01")) {
            return "video/av01";
        }
        if (strH0.startsWith("vp9") || strH0.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (strH0.startsWith("vp8") || strH0.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (strH0.startsWith("mp4a")) {
            if (strH0.startsWith("mp4a.") && (rVarG = g(strH0)) != null) {
                strF = f(rVarG.f4919H);
            }
            return strF == null ? "audio/mp4a-latm" : strF;
        }
        if (strH0.startsWith("mha1")) {
            return "audio/mha1";
        }
        if (strH0.startsWith("mhm1")) {
            return "audio/mhm1";
        }
        if (strH0.startsWith("ac-3") || strH0.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (strH0.startsWith("ec-3") || strH0.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (strH0.startsWith("ec+3")) {
            return "audio/eac3-joc";
        }
        if (strH0.startsWith("ac-4") || strH0.startsWith("dac4")) {
            return "audio/ac4";
        }
        if (strH0.startsWith("dtsc")) {
            return "audio/vnd.dts";
        }
        if (strH0.startsWith("dtse")) {
            return "audio/vnd.dts.hd;profile=lbr";
        }
        if (strH0.startsWith("dtsh") || strH0.startsWith("dtsl")) {
            return "audio/vnd.dts.hd";
        }
        if (strH0.startsWith("dtsx")) {
            return "audio/vnd.dts.uhd;profile=p2";
        }
        if (strH0.startsWith("opus")) {
            return "audio/opus";
        }
        if (strH0.startsWith("vorbis")) {
            return "audio/vorbis";
        }
        if (strH0.startsWith("flac")) {
            return "audio/flac";
        }
        if (strH0.startsWith("stpp")) {
            return "application/ttml+xml";
        }
        if (strH0.startsWith("wvtt")) {
            return "text/vtt";
        }
        if (strH0.contains("cea708")) {
            return "application/cea-708";
        }
        if (strH0.contains("eia608") || strH0.contains("cea608")) {
            return "application/cea-608";
        }
        ArrayList arrayList = f26779a;
        if (arrayList.size() <= 0) {
            return null;
        }
        A0.O.I(arrayList.get(0));
        throw null;
    }

    public static String f(int i8) {
        if (i8 == 32) {
            return "video/mp4v-es";
        }
        if (i8 == 33) {
            return "video/avc";
        }
        if (i8 == 35) {
            return "video/hevc";
        }
        if (i8 == 64) {
            return "audio/mp4a-latm";
        }
        if (i8 == 163) {
            return "video/wvc1";
        }
        if (i8 == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i8 == 221) {
            return "audio/vorbis";
        }
        if (i8 == 165) {
            return "audio/ac3";
        }
        if (i8 == 166) {
            return "audio/eac3";
        }
        switch (i8) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            case 108:
                return "image/jpeg";
            default:
                switch (i8) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    public static r g(String str) {
        Matcher matcher = f26780b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        int i8 = 1;
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new r(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0, i8, 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String h(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (k(str)) {
            return 1;
        }
        if (o(str)) {
            return 2;
        }
        if (n(str)) {
            return 3;
        }
        if (m(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = f26779a;
        if (arrayList.size() <= 0) {
            return -1;
        }
        A0.O.I(arrayList.get(0));
        throw null;
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : M.d0(str)) {
            String strE = e(str2);
            if (strE != null && o(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static boolean k(String str) {
        return "audio".equals(h(str));
    }

    public static boolean l(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return (str2.startsWith("dvhe") && str.startsWith("hev1")) || (str2.startsWith("dvh1") && str.startsWith("hvc1")) || ((str2.startsWith("dvav") && str.startsWith("avc3")) || ((str2.startsWith("dva1") && str.startsWith("avc1")) || (str2.startsWith("dav1") && str.startsWith("av01"))));
    }

    public static boolean m(String str) {
        return "image".equals(h(str)) || "application/x-image-uri".equals(str);
    }

    public static boolean n(String str) {
        return "text".equals(h(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    public static boolean o(String str) {
        return "video".equals(h(str));
    }

    public static String p(String str) {
        if (str == null) {
            return null;
        }
        String strH0 = k.h0(str);
        strH0.getClass();
        switch (strH0) {
            case "video/x-mvhevc":
                return "video/mv-hevc";
            case "audio/x-flac":
                return "audio/flac";
            case "application/x-mpegurl":
                return "application/x-mpegURL";
            case "audio/x-wav":
                return "audio/wav";
            case "audio/mpeg-l1":
                return "audio/mpeg-L1";
            case "audio/mpeg-l2":
                return "audio/mpeg-L2";
            case "audio/mp3":
                return "audio/mpeg";
            default:
                return strH0;
        }
    }
}
