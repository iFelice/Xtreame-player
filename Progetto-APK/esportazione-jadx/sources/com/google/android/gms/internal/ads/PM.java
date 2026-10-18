package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import java.util.Objects;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class PM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f15378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15380f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f15381g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f15382h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f15383i;

    public PM(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z7, boolean z8, boolean z9, boolean z10) {
        str.getClass();
        this.f15375a = str;
        this.f15376b = str2;
        this.f15377c = str3;
        this.f15378d = codecCapabilities;
        this.f15381g = z7;
        this.f15379e = z8;
        this.f15380f = z9;
        this.f15382h = z10;
        this.f15383i = AbstractC2140va.g(str2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    public static PM b(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z7, boolean z8, boolean z9, boolean z10) {
        boolean z11;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            if (Et.f13234a <= 22) {
                String str4 = Et.f13237d;
                z11 = (("ODROID-XU3".equals(str4) || "Nexus 10".equals(str4)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) ? false : true;
            }
        }
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        return new PM(str, str2, str3, codecCapabilities, z7, z11, z10 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback")), Et.f13234a >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface"));
    }

    public static Point f(MediaCodecInfo.VideoCapabilities videoCapabilities, int i8, int i9) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i10 = Et.f13234a;
        return new Point((((i8 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i9 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public static boolean h(MediaCodecInfo.VideoCapabilities videoCapabilities, int i8, int i9, double d6) {
        Point pointF = f(videoCapabilities, i8, i9);
        int i10 = pointF.x;
        int i11 = pointF.y;
        return (d6 == -1.0d || d6 < 1.0d) ? videoCapabilities.isSizeSupported(i10, i11) : videoCapabilities.areSizeAndRateSupported(i10, i11, Math.floor(d6));
    }

    public final C1203dK a(C1804p0 c1804p0, C1804p0 c1804p1) {
        int i8 = true != Objects.equals(c1804p0.f20383m, c1804p1.f20383m) ? 8 : 0;
        if (this.f15383i) {
            if (c1804p0.f20392v != c1804p1.f20392v) {
                i8 |= 1024;
            }
            if (!this.f15379e && (c1804p0.f20389s != c1804p1.f20389s || c1804p0.f20390t != c1804p1.f20390t)) {
                i8 |= IMediaList.Event.ItemAdded;
            }
            C1928rL c1928rL = c1804p0.f20396z;
            boolean zE = C1928rL.e(c1928rL);
            C1928rL c1928rL2 = c1804p1.f20396z;
            if ((!zE || !C1928rL.e(c1928rL2)) && !Objects.equals(c1928rL, c1928rL2)) {
                i8 |= 2048;
            }
            if (Et.f13237d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.f15375a) && !c1804p0.c(c1804p1)) {
                i8 |= 2;
            }
            if (i8 == 0) {
                return new C1203dK(this.f15375a, c1804p0, c1804p1, true != c1804p0.c(c1804p1) ? 2 : 3, 0);
            }
        } else {
            if (c1804p0.f20362A != c1804p1.f20362A) {
                i8 |= 4096;
            }
            if (c1804p0.f20363B != c1804p1.f20363B) {
                i8 |= 8192;
            }
            if (c1804p0.f20364C != c1804p1.f20364C) {
                i8 |= Http2.INITIAL_MAX_FRAME_SIZE;
            }
            String str = this.f15376b;
            if (i8 == 0 && "audio/mp4a-latm".equals(str)) {
                Pair pairA = AbstractC1154cN.a(c1804p0);
                Pair pairA2 = AbstractC1154cN.a(c1804p1);
                if (pairA != null && pairA2 != null) {
                    int iIntValue = ((Integer) pairA.first).intValue();
                    int iIntValue2 = ((Integer) pairA2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new C1203dK(this.f15375a, c1804p0, c1804p1, 3, 0);
                    }
                }
            }
            if (!c1804p0.c(c1804p1)) {
                i8 |= 32;
            }
            if ("audio/opus".equals(str)) {
                i8 |= 2;
            }
            if (i8 == 0) {
                return new C1203dK(this.f15375a, c1804p0, c1804p1, 1, 0);
            }
        }
        return new C1203dK(this.f15375a, c1804p0, c1804p1, 0, i8);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0081  */
    /* JADX WARN: Code duplicated, block: B:42:0x0087  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:76:0x0102  */
    /* JADX WARN: Code duplicated, block: B:77:0x0105  */
    /* JADX WARN: Code duplicated, block: B:80:0x0134  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:80:0x0134, please report this as an issue */
    public final boolean c(C1804p0 c1804p0) {
        int i8;
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        int maxInputChannelCount;
        int i9;
        int i10;
        String str = c1804p0.f20383m;
        String str2 = this.f15376b;
        if (!(str2.equals(str) || str2.equals(AbstractC1154cN.b(c1804p0))) || !i(c1804p0, true)) {
            return false;
        }
        if (this.f15383i) {
            int i11 = c1804p0.f20389s;
            if (i11 <= 0 || (i10 = c1804p0.f20390t) <= 0) {
                return true;
            }
            return e(i11, i10, c1804p0.f20391u);
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15378d;
        int i12 = c1804p0.f20363B;
        if (i12 == -1) {
            i8 = c1804p0.f20362A;
            if (i8 != -1) {
                return true;
            }
            if (codecCapabilities == null) {
                g("channelCount.caps");
            } else {
                audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    g("channelCount.aCaps");
                } else {
                    maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                    if (maxInputChannelCount <= 1 && ((Et.f13234a < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                        if ("audio/ac3".equals(str2)) {
                            i9 = 6;
                        } else if ("audio/eac3".equals(str2)) {
                            i9 = 16;
                        } else {
                            i9 = 30;
                        }
                        Zo.f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.f15375a + ", [" + maxInputChannelCount + " to " + i9 + "]");
                        maxInputChannelCount = i9;
                    }
                    if (maxInputChannelCount < i8) {
                        return true;
                    }
                    g("channelCount.support, " + i8);
                }
            }
        } else if (codecCapabilities == null) {
            g("sampleRate.caps");
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities2 == null) {
                g("sampleRate.aCaps");
            } else if (audioCapabilities2.isSampleRateSupported(i12)) {
                i8 = c1804p0.f20362A;
                if (i8 != -1) {
                    return true;
                }
                if (codecCapabilities == null) {
                    g("channelCount.caps");
                } else {
                    audioCapabilities = codecCapabilities.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        g("channelCount.aCaps");
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
                            Zo.f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.f15375a + ", [" + maxInputChannelCount + " to " + i9 + "]");
                            maxInputChannelCount = i9;
                        }
                        if (maxInputChannelCount < i8) {
                            return true;
                        }
                        g("channelCount.support, " + i8);
                    }
                }
            } else {
                g("sampleRate.support, " + i12);
            }
        }
        return false;
    }

    public final boolean d(C1804p0 c1804p0) {
        if (this.f15383i) {
            return this.f15379e;
        }
        Pair pairA = AbstractC1154cN.a(c1804p0);
        return pairA != null && ((Integer) pairA.first).intValue() == 42;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    public final boolean e(int i8, int i9, double d6) {
        String str;
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15378d;
        if (codecCapabilities == null) {
            g("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            g("sizeAndRate.vCaps");
            return false;
        }
        int i10 = Et.f13234a;
        if (i10 >= 29) {
            int iA = (i10 < 29 || ((bool = Cw.f12727k) != null && bool.booleanValue())) ? 0 : QM.a(videoCapabilities, i8, i9, d6);
            if (iA != 2) {
                if (iA == 1) {
                    StringBuilder sbD = A0.O.D("sizeAndRate.cover, ", i8, "x", i9, "@");
                    sbD.append(d6);
                    g(sbD.toString());
                    return false;
                }
                if (!h(videoCapabilities, i8, i9, d6)) {
                    if (i8 < i9) {
                        str = this.f15375a;
                        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str)) {
                            StringBuilder sbD2 = A0.O.D("sizeAndRate.rotated, ", i8, "x", i9, "@");
                            sbD2.append(d6);
                            String string = sbD2.toString();
                            String str2 = Et.f13238e;
                            StringBuilder sbQ = com.google.protobuf.U2.q("AssumedSupport [", string, "] [", str, ", ");
                            sbQ.append(this.f15376b);
                            sbQ.append("] [");
                            sbQ.append(str2);
                            sbQ.append("]");
                            Zo.b("MediaCodecInfo", sbQ.toString());
                        } else {
                            StringBuilder sbD3 = A0.O.D("sizeAndRate.rotated, ", i8, "x", i9, "@");
                            sbD3.append(d6);
                            String string2 = sbD3.toString();
                            String str3 = Et.f13238e;
                            StringBuilder sbQ2 = com.google.protobuf.U2.q("AssumedSupport [", string2, "] [", str, ", ");
                            sbQ2.append(this.f15376b);
                            sbQ2.append("] [");
                            sbQ2.append(str3);
                            sbQ2.append("]");
                            Zo.b("MediaCodecInfo", sbQ2.toString());
                        }
                    }
                    StringBuilder sbD4 = A0.O.D("sizeAndRate.support, ", i8, "x", i9, "@");
                    sbD4.append(d6);
                    g(sbD4.toString());
                    return false;
                }
            }
        } else if (!h(videoCapabilities, i8, i9, d6)) {
            if (i8 < i9) {
                str = this.f15375a;
                if (("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Et.f13235b)) && h(videoCapabilities, i9, i8, d6)) {
                    StringBuilder sbD5 = A0.O.D("sizeAndRate.rotated, ", i8, "x", i9, "@");
                    sbD5.append(d6);
                    String string3 = sbD5.toString();
                    String str4 = Et.f13238e;
                    StringBuilder sbQ3 = com.google.protobuf.U2.q("AssumedSupport [", string3, "] [", str, ", ");
                    sbQ3.append(this.f15376b);
                    sbQ3.append("] [");
                    sbQ3.append(str4);
                    sbQ3.append("]");
                    Zo.b("MediaCodecInfo", sbQ3.toString());
                }
            }
            StringBuilder sbD6 = A0.O.D("sizeAndRate.support, ", i8, "x", i9, "@");
            sbD6.append(d6);
            g(sbD6.toString());
            return false;
        }
        return true;
    }

    public final void g(String str) {
        String str2 = Et.f13238e;
        StringBuilder sbP = com.google.protobuf.U2.p("NoSupport [", str, "] [");
        sbP.append(this.f15375a);
        sbP.append(", ");
        sbP.append(this.f15376b);
        sbP.append("] [");
        sbP.append(str2);
        sbP.append("]");
        Zo.b("MediaCodecInfo", sbP.toString());
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0080  */
    /* JADX WARN: Code duplicated, block: B:42:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00db  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:77:0x0109  */
    public final boolean i(C1804p0 c1804p0, boolean z7) {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int i8;
        int iIntValue;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        Pair pairA = AbstractC1154cN.a(c1804p0);
        String str = this.f15377c;
        String str2 = c1804p0.f20383m;
        if (str2 != null && str2.equals("video/mv-hevc") && str.equals("video/hevc")) {
            String strF = AbstractC2008sy.f(c1804p0.f20386p);
            if (strF == null) {
                pairA = null;
            } else {
                String strTrim = strF.trim();
                int i9 = Et.f13234a;
                pairA = AbstractC1154cN.e(strF, strTrim.split("\\.", -1), c1804p0.f20396z);
            }
        }
        if (pairA != null) {
            int iIntValue2 = ((Integer) pairA.first).intValue();
            int iIntValue3 = ((Integer) pairA.second).intValue();
            boolean zEquals = "video/dolby-vision".equals(str2);
            int i10 = 8;
            String str3 = this.f15376b;
            if (zEquals) {
                if ("video/avc".equals(str3)) {
                    iIntValue3 = 0;
                    iIntValue2 = 8;
                } else if ("video/hevc".equals(str3)) {
                    iIntValue3 = 0;
                    iIntValue2 = 2;
                }
            }
            if (this.f15383i) {
                codecCapabilities = this.f15378d;
                if (codecCapabilities != null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                if (Et.f13234a <= 23 && "video/x-vnd.on2.vp9".equals(str3) && codecProfileLevelArr.length == 0) {
                    if (codecCapabilities != null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                    }
                    if (iIntValue >= 180000000) {
                        i10 = 1024;
                    } else if (iIntValue >= 120000000) {
                        i10 = IMediaList.Event.ItemAdded;
                    } else if (iIntValue >= 60000000) {
                        i10 = 256;
                    } else if (iIntValue >= 30000000) {
                        i10 = 128;
                    } else if (iIntValue >= 18000000) {
                        i10 = 64;
                    } else if (iIntValue >= 12000000) {
                        i10 = 32;
                    } else if (iIntValue >= 7200000) {
                        i10 = 16;
                    } else if (iIntValue < 3600000) {
                        if (iIntValue >= 1800000) {
                            i10 = 4;
                        } else if (iIntValue >= 800000) {
                            i10 = 2;
                        } else {
                            i10 = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel.profile = 1;
                    codecProfileLevel.level = i10;
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
                }
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : codecProfileLevelArr) {
                    if (codecProfileLevel2.profile != iIntValue2 && (codecProfileLevel2.level >= iIntValue3 || !z7)) {
                        if ("video/hevc".equals(str3) && iIntValue2 == 2) {
                            String str4 = Et.f13235b;
                            if ("sailfish".equals(str4) || "marlin".equals(str4)) {
                            }
                        }
                    }
                }
                g("codec.profileLevel, " + c1804p0.f20380j + ", " + str);
                return false;
            }
            if (iIntValue2 == 42) {
                iIntValue2 = 42;
                codecCapabilities = this.f15378d;
                if (codecCapabilities != null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                } else {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                if (Et.f13234a <= 23) {
                    if (codecCapabilities != null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = 0;
                    }
                    if (iIntValue >= 180000000) {
                        i10 = 1024;
                    } else if (iIntValue >= 120000000) {
                        i10 = IMediaList.Event.ItemAdded;
                    } else if (iIntValue >= 60000000) {
                        i10 = 256;
                    } else if (iIntValue >= 30000000) {
                        i10 = 128;
                    } else if (iIntValue >= 18000000) {
                        i10 = 64;
                    } else if (iIntValue >= 12000000) {
                        i10 = 32;
                    } else if (iIntValue >= 7200000) {
                        i10 = 16;
                    } else if (iIntValue < 3600000) {
                        if (iIntValue >= 1800000) {
                            i10 = 4;
                        } else if (iIntValue >= 800000) {
                            i10 = 2;
                        } else {
                            i10 = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel3 = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel3.profile = 1;
                    codecProfileLevel3.level = i10;
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel3};
                }
                while (i8 < r5) {
                    if (codecProfileLevel2.profile != iIntValue2) {
                    }
                }
                g("codec.profileLevel, " + c1804p0.f20380j + ", " + str);
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return this.f15375a;
    }
}
