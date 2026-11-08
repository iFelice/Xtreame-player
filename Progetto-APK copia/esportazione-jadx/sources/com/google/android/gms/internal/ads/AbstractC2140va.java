package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.leanback.widget.C0484j;
import com.google.api.Endpoint;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.va, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2140va {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f21524a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f21525b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(String str, String str2) {
        byte b8;
        C0484j c0484jC;
        switch (str.hashCode()) {
            case -2123537834:
                if (!str.equals("audio/eac3-joc")) {
                    b8 = -1;
                } else {
                    b8 = 4;
                }
                break;
            case -1365340241:
                if (!str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    b8 = -1;
                } else {
                    b8 = 8;
                }
                break;
            case -1095064472:
                if (!str.equals("audio/vnd.dts")) {
                    b8 = -1;
                } else {
                    b8 = 6;
                }
                break;
            case -53558318:
                if (!str.equals("audio/mp4a-latm")) {
                    b8 = -1;
                } else {
                    b8 = 1;
                }
                break;
            case 187078296:
                if (!str.equals("audio/ac3")) {
                    b8 = -1;
                } else {
                    b8 = 2;
                }
                break;
            case 187078297:
                if (!str.equals("audio/ac4")) {
                    b8 = -1;
                } else {
                    b8 = 5;
                }
                break;
            case 550520934:
                if (!str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    b8 = -1;
                } else {
                    b8 = 9;
                }
                break;
            case 1504578661:
                if (!str.equals("audio/eac3")) {
                    b8 = -1;
                } else {
                    b8 = 3;
                }
                break;
            case 1504831518:
                if (!str.equals("audio/mpeg")) {
                    b8 = -1;
                } else {
                    b8 = 0;
                }
                break;
            case 1504891608:
                if (!str.equals("audio/opus")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case 1505942594:
                if (!str.equals("audio/vnd.dts.hd")) {
                    b8 = -1;
                } else {
                    b8 = 7;
                }
                break;
            case 1556697186:
                if (!str.equals("audio/true-hd")) {
                    b8 = -1;
                } else {
                    b8 = 10;
                }
                break;
            default:
                b8 = -1;
                break;
        }
        switch (b8) {
            case 0:
                return 9;
            case 1:
                if (str2 == null || (c0484jC = c(str2)) == null) {
                    return 0;
                }
                return c0484jC.zza();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case 8:
                return 8;
            case 9:
                return 30;
            case 10:
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if ("audio".equals(h(str))) {
            return 1;
        }
        if (g(str)) {
            return 2;
        }
        if ("text".equals(h(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("image".equals(h(str)) || "application/x-image-uri".equals(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = f21524a;
        if (arrayList.size() <= 0) {
            return -1;
        }
        A0.O.I(arrayList.get(0));
        throw null;
    }

    public static C0484j c(String str) {
        Matcher matcher = f21525b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new C0484j(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0, 2);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String d(int i8) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    public static String e(String str) {
        byte b8;
        if (str == null) {
            return null;
        }
        String strM = p113o3.r.m(str);
        switch (strM) {
            case "audio/x-flac":
                b8 = 0;
                break;
            case "application/x-mpegurl":
                b8 = 3;
                break;
            case "audio/x-wav":
                b8 = 2;
                break;
            case "audio/mpeg-l1":
                b8 = 4;
                break;
            case "audio/mpeg-l2":
                b8 = 5;
                break;
            case "audio/mp3":
                b8 = 1;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0) {
            return "audio/flac";
        }
        if (b8 == 1) {
            return "audio/mpeg";
        }
        if (b8 == 2) {
            return "audio/wav";
        }
        if (b8 == 3) {
            return "application/x-mpegURL";
        }
        if (b8 != 4) {
            return b8 != 5 ? strM : "audio/mpeg-L2";
        }
        return "audio/mpeg-L1";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x0080  */
    public static boolean f(String str, String str2) {
        C0484j c0484jC;
        int iZza;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/mpeg":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/raw":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
            case "audio/flac":
            case "audio/ac3":
            case "audio/eac3":
            case "audio/eac3-joc":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (c0484jC = c(str2)) == null || (iZza = c0484jC.zza()) == 0 || iZza == 16) ? false : true;
            default:
                return false;
        }
    }

    public static boolean g(String str) {
        return "video".equals(h(str));
    }

    public static String h(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }
}
