package K0;

import B0.C0055j;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import com.google.protobuf.U2;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.C3126i;
import p094m0.C3136t;
import p094m0.O;
import p117p0.AbstractC3169g;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f4358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f4361g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f4362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4363i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f4364j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f4365k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4366l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4367m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f4368n;

    public o(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12) {
        str.getClass();
        this.f4355a = str;
        this.f4356b = str2;
        this.f4357c = str3;
        this.f4358d = codecCapabilities;
        this.f4361g = z7;
        this.f4362h = z8;
        this.f4363i = z9;
        this.f4359e = z10;
        this.f4360f = z11;
        this.f4364j = z12;
        this.f4365k = O.o(str2);
        this.f4368n = -3.4028235E38f;
        this.f4366l = -1;
        this.f4367m = -1;
    }

    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i8, int i9, double d6) {
        Range achievableFrameRatesFor;
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        Point point = new Point(M.f(i8, widthAlignment) * widthAlignment, M.f(i9, heightAlignment) * heightAlignment);
        int i10 = point.x;
        int i11 = point.y;
        if (d6 == -1.0d || d6 < 1.0d) {
            return videoCapabilities.isSizeSupported(i10, i11);
        }
        double dFloor = Math.floor(d6);
        if (videoCapabilities.areSizeAndRateSupported(i10, i11, dFloor)) {
            return Build.VERSION.SDK_INT < 24 || (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i10, i11)) == null || dFloor <= ((Double) achievableFrameRatesFor.getUpper()).doubleValue();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0091  */
    public static o i(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z7, boolean z8, boolean z9, boolean z10) {
        boolean z11;
        boolean z12;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            if (Build.VERSION.SDK_INT <= 22) {
                String str4 = Build.MODEL;
                z11 = (("ODROID-XU3".equals(str4) || "Nexus 10".equals(str4)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) ? false : true;
            }
        }
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        boolean z13 = z10 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"));
        if (Build.VERSION.SDK_INT < 35 || codecCapabilities == null || !codecCapabilities.isFeatureSupported("detached-surface")) {
            z12 = false;
        } else {
            String str5 = Build.MANUFACTURER;
            if (str5.equals("Xiaomi") || str5.equals("OPPO") || str5.equals("realme") || str5.equals("motorola") || str5.equals("LENOVO")) {
                z12 = false;
            } else {
                z12 = true;
            }
        }
        return new o(str, str2, str3, codecCapabilities, z7, z8, z9, z11, z13, z12);
    }

    public final C0055j b(C3136t c3136t, C3136t c3136t2) {
        int i8;
        int i9 = !Objects.equals(c3136t.f27041o, c3136t2.f27041o) ? 8 : 0;
        if (this.f4365k) {
            if (c3136t.f27010A != c3136t2.f27010A) {
                i9 |= 1024;
            }
            boolean z7 = (c3136t.f27048v == c3136t2.f27048v && c3136t.f27049w == c3136t2.f27049w) ? false : true;
            if (!this.f4359e && z7) {
                i9 |= IMediaList.Event.ItemAdded;
            }
            C3126i c3126i = c3136t.f27014E;
            boolean zF = C3126i.f(c3126i);
            C3126i c3126i2 = c3136t2.f27014E;
            if ((!zF || !C3126i.f(c3126i2)) && !Objects.equals(c3126i, c3126i2)) {
                i9 |= 2048;
            }
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.f4355a) && !c3136t.c(c3136t2)) {
                i9 |= 2;
            }
            int i10 = c3136t.f27050x;
            if (i10 != -1 && (i8 = c3136t.f27051y) != -1 && i10 == c3136t2.f27050x && i8 == c3136t2.f27051y && z7) {
                i9 |= 2;
            }
            if (i9 == 0) {
                return new C0055j(this.f4355a, c3136t, c3136t2, c3136t.c(c3136t2) ? 3 : 2, 0);
            }
        } else {
            if (c3136t.f27016G != c3136t2.f27016G) {
                i9 |= 4096;
            }
            if (c3136t.f27017H != c3136t2.f27017H) {
                i9 |= 8192;
            }
            if (c3136t.f27018I != c3136t2.f27018I) {
                i9 |= Http2.INITIAL_MAX_FRAME_SIZE;
            }
            String str = this.f4356b;
            if (i9 == 0 && "audio/mp4a-latm".equals(str)) {
                HashMap map = z.f4454a;
                Pair pairB = AbstractC3169g.b(c3136t);
                Pair pairB2 = AbstractC3169g.b(c3136t2);
                if (pairB != null && pairB2 != null) {
                    int iIntValue = ((Integer) pairB.first).intValue();
                    int iIntValue2 = ((Integer) pairB2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new C0055j(this.f4355a, c3136t, c3136t2, 3, 0);
                    }
                }
            }
            if (!c3136t.c(c3136t2)) {
                i9 |= 32;
            }
            if ("audio/opus".equals(str)) {
                i9 |= 2;
            }
            if (i9 == 0) {
                return new C0055j(this.f4355a, c3136t, c3136t2, 1, 0);
            }
        }
        return new C0055j(this.f4355a, c3136t, c3136t2, 0, i9);
    }

    public final boolean c(C3136t c3136t, boolean z7) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        HashMap map = z.f4454a;
        Pair pairB = AbstractC3169g.b(c3136t);
        String str = this.f4357c;
        String str2 = c3136t.f27041o;
        if (str2 != null && str2.equals("video/mv-hevc")) {
            String strP = O.p(str);
            if (strP.equals("video/mv-hevc")) {
                return true;
            }
            if (strP.equals("video/hevc")) {
                String strC = p125q0.p.c(c3136t.f27044r);
                if (strC == null) {
                    pairB = null;
                } else {
                    String strTrim = strC.trim();
                    String str3 = M.f28050a;
                    pairB = AbstractC3169g.c(strC, strTrim.split("\\.", -1), c3136t.f27014E);
                }
            }
        }
        if (pairB == null) {
            return true;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        int iIntValue2 = ((Integer) pairB.second).intValue();
        boolean zEquals = "video/dolby-vision".equals(str2);
        int i8 = 8;
        String str4 = this.f4356b;
        if (zEquals) {
            str4.getClass();
            switch (str4) {
                case "video/av01":
                case "video/hevc":
                    iIntValue2 = 0;
                    iIntValue = 2;
                    break;
                case "video/avc":
                    iIntValue2 = 0;
                    iIntValue = 8;
                    break;
            }
        }
        if (!this.f4365k && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4358d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
        }
        if (Build.VERSION.SDK_INT <= 23 && "video/x-vnd.on2.vp9".equals(str4) && codecProfileLevelArr.length == 0) {
            int iIntValue3 = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
            if (iIntValue3 >= 180000000) {
                i8 = 1024;
            } else if (iIntValue3 >= 120000000) {
                i8 = IMediaList.Event.ItemAdded;
            } else if (iIntValue3 >= 60000000) {
                i8 = 256;
            } else if (iIntValue3 >= 30000000) {
                i8 = 128;
            } else if (iIntValue3 >= 18000000) {
                i8 = 64;
            } else if (iIntValue3 >= 12000000) {
                i8 = 32;
            } else if (iIntValue3 >= 7200000) {
                i8 = 16;
            } else if (iIntValue3 < 3600000) {
                i8 = iIntValue3 >= 1800000 ? 4 : iIntValue3 >= 800000 ? 2 : 1;
            }
            MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
            codecProfileLevel.profile = 1;
            codecProfileLevel.level = i8;
            codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : codecProfileLevelArr) {
            if (codecProfileLevel2.profile == iIntValue && (codecProfileLevel2.level >= iIntValue2 || !z7)) {
                if ("video/hevc".equals(str4) && 2 == iIntValue) {
                    String str5 = Build.DEVICE;
                    if ("sailfish".equals(str5) || "marlin".equals(str5)) {
                    }
                }
                return true;
            }
        }
        h("codec.profileLevel, " + c3136t.f27037k + ", " + str);
        return false;
    }

    public final boolean d(C3136t c3136t) {
        return (Objects.equals(c3136t.f27041o, "audio/flac") && c3136t.f27018I == 22 && Build.VERSION.SDK_INT < 34 && this.f4355a.equals("c2.android.flac.decoder")) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x007d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0084  */
    /* JADX WARN: Code duplicated, block: B:43:0x008a  */
    /* JADX WARN: Code duplicated, block: B:44:0x0091  */
    /* JADX WARN: Code duplicated, block: B:75:0x0102  */
    /* JADX WARN: Code duplicated, block: B:76:0x0104  */
    /* JADX WARN: Code duplicated, block: B:78:0x010c  */
    /* JADX WARN: Code duplicated, block: B:79:0x010f  */
    /* JADX WARN: Code duplicated, block: B:82:0x013e  */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x013e, please report this as an issue */
    public final boolean e(C3136t c3136t) {
        int i8;
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        int maxInputChannelCount;
        int i9;
        int i10;
        String str = c3136t.f27041o;
        String str2 = this.f4356b;
        if (!(str2.equals(str) || str2.equals(z.b(c3136t))) || !c(c3136t, true) || !d(c3136t)) {
            return false;
        }
        if (this.f4365k) {
            int i11 = c3136t.f27048v;
            if (i11 <= 0 || (i10 = c3136t.f27049w) <= 0) {
                return true;
            }
            return g(i11, i10, c3136t.f27052z);
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4358d;
        int i12 = c3136t.f27017H;
        if (i12 == -1) {
            i8 = c3136t.f27016G;
            if (i8 != -1) {
                return true;
            }
            if (codecCapabilities == null) {
                h("channelCount.caps");
            } else {
                audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("channelCount.aCaps");
                } else {
                    maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                    if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                        if ("audio/ac3".equals(str2)) {
                            i9 = 6;
                        } else if ("audio/eac3".equals(str2)) {
                            i9 = 16;
                        } else {
                            i9 = 30;
                        }
                        p117p0.x.f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.f4355a + ", [" + maxInputChannelCount + " to " + i9 + "]");
                        maxInputChannelCount = i9;
                    }
                    if (maxInputChannelCount < i8) {
                        return true;
                    }
                    h("channelCount.support, " + i8);
                }
            }
        } else if (codecCapabilities == null) {
            h("sampleRate.caps");
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities2 == null) {
                h("sampleRate.aCaps");
            } else if (audioCapabilities2.isSampleRateSupported(i12)) {
                i8 = c3136t.f27016G;
                if (i8 != -1) {
                    return true;
                }
                if (codecCapabilities == null) {
                    h("channelCount.caps");
                } else {
                    audioCapabilities = codecCapabilities.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        h("channelCount.aCaps");
                    } else {
                        maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                        if (maxInputChannelCount <= 1) {
                            if ("audio/ac3".equals(str2)) {
                                i9 = 6;
                            } else if ("audio/eac3".equals(str2)) {
                                i9 = 16;
                            } else {
                                i9 = 30;
                            }
                            p117p0.x.f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.f4355a + ", [" + maxInputChannelCount + " to " + i9 + "]");
                            maxInputChannelCount = i9;
                        }
                        if (maxInputChannelCount < i8) {
                            return true;
                        }
                        h("channelCount.support, " + i8);
                    }
                }
            } else {
                h("sampleRate.support, " + i12);
            }
        }
        return false;
    }

    public final boolean f(C3136t c3136t) {
        if (this.f4365k) {
            return this.f4359e;
        }
        HashMap map = z.f4454a;
        Pair pairB = AbstractC3169g.b(c3136t);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    public final boolean g(int i8, int i9, double d6) {
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4358d;
        if (codecCapabilities == null) {
            h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            int iA = (i10 < 29 || ((bool = com.bumptech.glide.d.f11506c) != null && bool.booleanValue())) ? 0 : D.g.a(videoCapabilities, i8, i9, d6);
            if (iA == 2) {
                return true;
            }
            if (iA == 1) {
                StringBuilder sbD = A0.O.D("sizeAndRate.cover, ", i8, "x", i9, "@");
                sbD.append(d6);
                h(sbD.toString());
                return false;
            }
        }
        if (!a(videoCapabilities, i8, i9, d6)) {
            if (i8 < i9) {
                String str = this.f4355a;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && a(videoCapabilities, i9, i8, d6)) {
                    StringBuilder sbD2 = A0.O.D("sizeAndRate.rotated, ", i8, "x", i9, "@");
                    sbD2.append(d6);
                    StringBuilder sbQ = U2.q("AssumedSupport [", sbD2.toString(), "] [", str, ", ");
                    sbQ.append(this.f4356b);
                    sbQ.append("] [");
                    sbQ.append(M.f28050a);
                    sbQ.append("]");
                    p117p0.x.b("MediaCodecInfo", sbQ.toString());
                }
            }
            StringBuilder sbD3 = A0.O.D("sizeAndRate.support, ", i8, "x", i9, "@");
            sbD3.append(d6);
            h(sbD3.toString());
            return false;
        }
        return true;
    }

    public final void h(String str) {
        StringBuilder sbP = U2.p("NoSupport [", str, "] [");
        sbP.append(this.f4355a);
        sbP.append(", ");
        sbP.append(this.f4356b);
        sbP.append("] [");
        sbP.append(M.f28050a);
        sbP.append("]");
        p117p0.x.b("MediaCodecInfo", sbP.toString());
    }

    public final String toString() {
        return this.f4355a;
    }
}
