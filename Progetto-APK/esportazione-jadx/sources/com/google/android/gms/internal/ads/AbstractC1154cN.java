package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1154cN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f18220a = Pattern.compile("^\\D?(\\d+)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f18221b = new HashMap();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:128:0x022c  */
    /* JADX WARN: Code duplicated, block: B:15:0x0052  */
    /* JADX WARN: Code duplicated, block: B:57:0x0102  */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v16 int, still in use, count: 1, list:
      (r3v16 int) from 0x005b: IF  (r3v16 int) != (1567 int)  -> B:18:0x005d A[HIDDEN] (LINE:92)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
    	at jadx.core.utils.InsnRemover.removeAllMarked(InsnRemover.java:276)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:354)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v16 int, still in use, count: 1, list:
      (r3v16 int) from 0x005b: IF  (r3v16 int) != (1567 int)  -> B:18:0x005d A[HIDDEN] (LINE:92)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Pair a(C1804p0 c1804p0) {
        int i8;
        int i9;
        Pair pair;
        int i10;
        int i11;
        int i12;
        Integer numValueOf;
        Integer numValueOf2;
        String str = c1804p0.f20380j;
        if (str != null) {
            String[] strArrSplit = str.split("\\.");
            boolean zEquals = "video/dolby-vision".equals(c1804p0.f20383m);
            int i13 = 3;
            int i14 = 2;
            int i15 = 1;
            String str2 = c1804p0.f20380j;
            if (!zEquals) {
                switch (strArrSplit[0]) {
                    case "avc1":
                    case "avc2":
                        int length = strArrSplit.length;
                        if (length < 2) {
                            p000a.r.u(str2, "Ignoring malformed AVC codec string: ", "MediaCodecUtil");
                            break;
                        } else {
                            try {
                                if (strArrSplit[1].length() == 6) {
                                    i8 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                                    i9 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                                } else if (length < 3) {
                                    Zo.f("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str2);
                                } else {
                                    i8 = Integer.parseInt(strArrSplit[1]);
                                    i9 = Integer.parseInt(strArrSplit[2]);
                                }
                                if (i8 == 66) {
                                    i14 = 1;
                                } else if (i8 != 77) {
                                    if (i8 == 88) {
                                        i14 = 4;
                                    } else if (i8 == 100) {
                                        i14 = 8;
                                    } else if (i8 == 110) {
                                        i14 = 16;
                                    } else if (i8 != 122) {
                                        i14 = i8 != 244 ? -1 : 64;
                                    } else {
                                        i14 = 32;
                                    }
                                }
                                if (i14 == -1) {
                                    p000a.r.p("Unknown AVC profile: ", i8, "MediaCodecUtil");
                                } else {
                                    switch (i9) {
                                        case 10:
                                            break;
                                        case 11:
                                            i15 = 4;
                                            break;
                                        case 12:
                                            i15 = 8;
                                            break;
                                        case 13:
                                            i15 = 16;
                                            break;
                                        default:
                                            switch (i9) {
                                                case 20:
                                                    i15 = 32;
                                                    break;
                                                case 21:
                                                    i15 = 64;
                                                    break;
                                                case 22:
                                                    i15 = 128;
                                                    break;
                                                default:
                                                    switch (i9) {
                                                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                                            i15 = 256;
                                                            break;
                                                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                                            i15 = IMediaList.Event.ItemAdded;
                                                            break;
                                                        case 32:
                                                            i15 = 1024;
                                                            break;
                                                        default:
                                                            switch (i9) {
                                                                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                                                    i15 = 2048;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                                                    i15 = 4096;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                                                    i15 = 8192;
                                                                    break;
                                                                default:
                                                                    switch (i9) {
                                                                        case 50:
                                                                            i15 = Http2.INITIAL_MAX_FRAME_SIZE;
                                                                            break;
                                                                        case 51:
                                                                            i15 = 32768;
                                                                            break;
                                                                        case 52:
                                                                            i15 = 65536;
                                                                            break;
                                                                        default:
                                                                            i15 = -1;
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    if (i15 != -1) {
                                        pair = new Pair(Integer.valueOf(i14), Integer.valueOf(i15));
                                        return pair;
                                    }
                                    p000a.r.p("Unknown AVC level: ", i9, "MediaCodecUtil");
                                }
                            } catch (NumberFormatException unused) {
                                p000a.r.u(str2, "Ignoring malformed AVC codec string: ", "MediaCodecUtil");
                            }
                            break;
                        }
                        break;
                    case "vp09":
                        if (strArrSplit.length < 3) {
                            p000a.r.u(str2, "Ignoring malformed VP9 codec string: ", "MediaCodecUtil");
                            break;
                        } else {
                            try {
                                int i16 = Integer.parseInt(strArrSplit[1]);
                                int i17 = Integer.parseInt(strArrSplit[2]);
                                if (i16 == 0) {
                                    i10 = 1;
                                } else if (i16 == 1) {
                                    i10 = 2;
                                } else if (i16 != 2) {
                                    i10 = i16 != 3 ? -1 : 8;
                                } else {
                                    i10 = 4;
                                }
                                if (i10 == -1) {
                                    p000a.r.p("Unknown VP9 profile: ", i16, "MediaCodecUtil");
                                } else {
                                    if (i17 != 10) {
                                        if (i17 == 11) {
                                            i15 = 2;
                                        } else if (i17 == 20) {
                                            i15 = 4;
                                        } else if (i17 == 21) {
                                            i15 = 8;
                                        } else if (i17 == 30) {
                                            i15 = 16;
                                        } else if (i17 == 31) {
                                            i15 = 32;
                                        } else if (i17 == 40) {
                                            i15 = 64;
                                        } else if (i17 == 41) {
                                            i15 = 128;
                                        } else if (i17 == 50) {
                                            i15 = 256;
                                        } else if (i17 != 51) {
                                            switch (i17) {
                                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                                    i15 = 2048;
                                                    break;
                                                case 61:
                                                    i15 = 4096;
                                                    break;
                                                case 62:
                                                    i15 = 8192;
                                                    break;
                                                default:
                                                    i15 = -1;
                                                    break;
                                            }
                                        } else {
                                            i15 = IMediaList.Event.ItemAdded;
                                        }
                                    }
                                    if (i15 != -1) {
                                        return new Pair(Integer.valueOf(i10), Integer.valueOf(i15));
                                    }
                                    p000a.r.p("Unknown VP9 level: ", i17, "MediaCodecUtil");
                                }
                            } catch (NumberFormatException unused2) {
                                p000a.r.u(str2, "Ignoring malformed VP9 codec string: ", "MediaCodecUtil");
                            }
                            break;
                        }
                        break;
                    case "hev1":
                    case "hvc1":
                        return e(str2, strArrSplit, c1804p0.f20396z);
                    case "av01":
                        if (strArrSplit.length < 4) {
                            p000a.r.u(str2, "Ignoring malformed AV1 codec string: ", "MediaCodecUtil");
                            break;
                        } else {
                            try {
                                int i18 = Integer.parseInt(strArrSplit[1]);
                                int i19 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                                int i20 = Integer.parseInt(strArrSplit[3]);
                                if (i18 != 0) {
                                    p000a.r.p("Unknown AV1 profile: ", i18, "MediaCodecUtil");
                                } else {
                                    if (i20 == 8) {
                                        i11 = 1;
                                    } else if (i20 != 10) {
                                        p000a.r.p("Unknown AV1 bit depth: ", i20, "MediaCodecUtil");
                                    } else {
                                        C1928rL c1928rL = c1804p0.f20396z;
                                        i11 = (c1928rL == null || !(c1928rL.f20716d != null || (i12 = c1928rL.f20715c) == 7 || i12 == 6)) ? 2 : 4096;
                                    }
                                    switch (i19) {
                                        case 0:
                                            break;
                                        case 1:
                                            i15 = 2;
                                            break;
                                        case 2:
                                            i15 = 4;
                                            break;
                                        case 3:
                                            i15 = 8;
                                            break;
                                        case 4:
                                            i15 = 16;
                                            break;
                                        case 5:
                                            i15 = 32;
                                            break;
                                        case 6:
                                            i15 = 64;
                                            break;
                                        case 7:
                                            i15 = 128;
                                            break;
                                        case 8:
                                            i15 = 256;
                                            break;
                                        case 9:
                                            i15 = IMediaList.Event.ItemAdded;
                                            break;
                                        case 10:
                                            i15 = 1024;
                                            break;
                                        case 11:
                                            i15 = 2048;
                                            break;
                                        case 12:
                                            i15 = 4096;
                                            break;
                                        case 13:
                                            i15 = 8192;
                                            break;
                                        case 14:
                                            i15 = Http2.INITIAL_MAX_FRAME_SIZE;
                                            break;
                                        case 15:
                                            i15 = 32768;
                                            break;
                                        case 16:
                                            i15 = 65536;
                                            break;
                                        case 17:
                                            i15 = 131072;
                                            break;
                                        case 18:
                                            i15 = 262144;
                                            break;
                                        case 19:
                                            i15 = 524288;
                                            break;
                                        case 20:
                                            i15 = 1048576;
                                            break;
                                        case 21:
                                            i15 = 2097152;
                                            break;
                                        case 22:
                                            i15 = 4194304;
                                            break;
                                        case 23:
                                            i15 = 8388608;
                                            break;
                                        default:
                                            i15 = -1;
                                            break;
                                    }
                                    if (i15 != -1) {
                                        return new Pair(Integer.valueOf(i11), Integer.valueOf(i15));
                                    }
                                    p000a.r.p("Unknown AV1 level: ", i19, "MediaCodecUtil");
                                }
                            } catch (NumberFormatException unused3) {
                                p000a.r.u(str2, "Ignoring malformed AV1 codec string: ", "MediaCodecUtil");
                            }
                            break;
                        }
                        break;
                    case "mp4a":
                        if (strArrSplit.length != 3) {
                            p000a.r.u(str2, "Ignoring malformed MP4A codec string: ", "MediaCodecUtil");
                            break;
                        } else {
                            try {
                                if ("audio/mp4a-latm".equals(AbstractC2140va.d(Integer.parseInt(strArrSplit[1], 16)))) {
                                    int i21 = Integer.parseInt(strArrSplit[2]);
                                    if (i21 == 17) {
                                        i13 = 17;
                                    } else if (i21 == 20) {
                                        i13 = 20;
                                    } else if (i21 == 23) {
                                        i13 = 23;
                                    } else if (i21 == 29) {
                                        i13 = 29;
                                    } else if (i21 == 39) {
                                        i13 = 39;
                                    } else if (i21 != 42) {
                                        switch (i21) {
                                            case 1:
                                                i13 = 1;
                                                break;
                                            case 2:
                                                i13 = 2;
                                                break;
                                            case 3:
                                                break;
                                            case 4:
                                                i13 = 4;
                                                break;
                                            case 5:
                                                i13 = 5;
                                                break;
                                            case 6:
                                                i13 = 6;
                                                break;
                                            default:
                                                i13 = -1;
                                                break;
                                        }
                                    } else {
                                        i13 = 42;
                                    }
                                    if (i13 != -1) {
                                        pair = new Pair(Integer.valueOf(i13), 0);
                                        return pair;
                                    }
                                }
                            } catch (NumberFormatException unused4) {
                                p000a.r.u(str2, "Ignoring malformed MP4A codec string: ", "MediaCodecUtil");
                            }
                            break;
                        }
                        break;
                }
            } else if (strArrSplit.length < 3) {
                p000a.r.u(str2, "Ignoring malformed Dolby Vision codec string: ", "MediaCodecUtil");
            } else {
                Matcher matcher = f18220a.matcher(strArrSplit[1]);
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    if (strGroup != null) {
                        if (strGroup.hashCode() != 1567) {
                            switch (strGroup) {
                                case "00":
                                    numValueOf = 1;
                                    break;
                                case "01":
                                    numValueOf = 2;
                                    break;
                                case "02":
                                    numValueOf = 4;
                                    break;
                                case "03":
                                    numValueOf = 8;
                                    break;
                                case "04":
                                    numValueOf = 16;
                                    break;
                                case "05":
                                    numValueOf = 32;
                                    break;
                                case "06":
                                    numValueOf = 64;
                                    break;
                                case "07":
                                    numValueOf = 128;
                                    break;
                                case "08":
                                    numValueOf = 256;
                                    break;
                                case "09":
                                    numValueOf = Integer.valueOf(IMediaList.Event.ItemAdded);
                                    break;
                                default:
                                    numValueOf = null;
                                    break;
                            }
                        } else if (strGroup.equals("10")) {
                            numValueOf = 1024;
                        } else {
                            numValueOf = null;
                        }
                    } else {
                        numValueOf = null;
                    }
                    if (numValueOf == null) {
                        p000a.r.u(strGroup, "Unknown Dolby Vision profile string: ", "MediaCodecUtil");
                    } else {
                        String str3 = strArrSplit[2];
                        if (str3 != null) {
                            str3.hashCode();
                            switch (str3) {
                                case "01":
                                    numValueOf2 = 1;
                                    break;
                                case "02":
                                    numValueOf2 = 2;
                                    break;
                                case "03":
                                    numValueOf2 = 4;
                                    break;
                                case "04":
                                    numValueOf2 = 8;
                                    break;
                                case "05":
                                    numValueOf2 = 16;
                                    break;
                                case "06":
                                    numValueOf2 = 32;
                                    break;
                                case "07":
                                    numValueOf2 = 64;
                                    break;
                                case "08":
                                    numValueOf2 = 128;
                                    break;
                                case "09":
                                    numValueOf2 = 256;
                                    break;
                                default:
                                    switch (str3) {
                                        case 1567:
                                            if (!str3.equals("10")) {
                                                numValueOf2 = null;
                                            } else {
                                                numValueOf2 = Integer.valueOf(IMediaList.Event.ItemAdded);
                                            }
                                            break;
                                        case 1568:
                                            if (!str3.equals("11")) {
                                                numValueOf2 = null;
                                            } else {
                                                numValueOf2 = 1024;
                                            }
                                            break;
                                        case 1569:
                                            if (!str3.equals("12")) {
                                                numValueOf2 = null;
                                            } else {
                                                numValueOf2 = 2048;
                                            }
                                            break;
                                        case 1570:
                                            if (!str3.equals("13")) {
                                                numValueOf2 = null;
                                            } else {
                                                numValueOf2 = 4096;
                                            }
                                            break;
                                        default:
                                            numValueOf2 = null;
                                            break;
                                    }
                            }
                        } else {
                            numValueOf2 = null;
                        }
                        if (numValueOf2 != null) {
                            return new Pair(numValueOf, numValueOf2);
                        }
                        p000a.r.u(str3, "Unknown Dolby Vision level string: ", "MediaCodecUtil");
                    }
                } else {
                    p000a.r.u(str2, "Ignoring malformed Dolby Vision codec string: ", "MediaCodecUtil");
                }
            }
        }
        return null;
    }

    public static String b(C1804p0 c1804p0) {
        Pair pairA;
        if ("audio/eac3-joc".equals(c1804p0.f20383m)) {
            return "audio/eac3";
        }
        String str = c1804p0.f20383m;
        if ("video/dolby-vision".equals(str) && (pairA = a(c1804p0)) != null) {
            int iIntValue = ((Integer) pairA.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return "video/hevc";
            }
            if (iIntValue == 512) {
                return "video/avc";
            }
            if (iIntValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(str)) {
            return "video/hevc";
        }
        return null;
    }

    public static synchronized List c(String str, boolean z7, boolean z8) {
        try {
            YM ym = new YM(str, z7, z8);
            HashMap map = f18221b;
            List list = (List) map.get(ym);
            if (list != null) {
                return list;
            }
            ArrayList arrayListF = f(ym, new K0.x(z7, z8));
            if (z7 && arrayListF.isEmpty() && Et.f13234a <= 23) {
                arrayListF = f(ym, new GH());
                if (!arrayListF.isEmpty()) {
                    Zo.f("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((PM) arrayListF.get(0)).f15375a);
                }
            }
            if ("audio/raw".equals(str)) {
                if (Et.f13234a < 26 && Et.f13235b.equals("R9") && arrayListF.size() == 1 && ((PM) arrayListF.get(0)).f15375a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    arrayListF.add(PM.b("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
                }
                Collections.sort(arrayListF, new XM(new GH()));
            }
            if (Et.f13234a < 32 && arrayListF.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((PM) arrayListF.get(0)).f15375a)) {
                arrayListF.add((PM) arrayListF.remove(0));
            }
            AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(arrayListF);
            map.put(ym, abstractC2073uAT);
            return abstractC2073uAT;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static PA d(WM wm, C1804p0 c1804p0, boolean z7, boolean z8) {
        Iterable iterableC;
        String str = c1804p0.f20383m;
        C2272y1 c2272y1 = (C2272y1) wm;
        c2272y1.getClass();
        List listC = c(str, z7, z8);
        String strB = b(c1804p0);
        if (strB == null) {
            iterableC = PA.f15340K;
        } else {
            c2272y1.getClass();
            iterableC = c(strB, z7, z8);
        }
        C1917rA c1917rA = new C1917rA();
        c1917rA.d(listC);
        c1917rA.d(iterableC);
        return c1917rA.h();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:107:0x0188  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Pair e(String str, String[] strArr, C1928rL c1928rL) {
        int i8;
        Integer numValueOf;
        if (strArr.length < 4) {
            p000a.r.u(str, "Ignoring malformed HEVC codec string: ", "MediaCodecUtil");
            return null;
        }
        Matcher matcher = f18220a.matcher(strArr[1]);
        if (!matcher.matches()) {
            p000a.r.u(str, "Ignoring malformed HEVC codec string: ", "MediaCodecUtil");
            return null;
        }
        String strGroup = matcher.group(1);
        byte b8 = 6;
        if ("1".equals(strGroup)) {
            i8 = 1;
        } else if ("2".equals(strGroup)) {
            i8 = (c1928rL == null || c1928rL.f20715c != 6) ? 2 : 4096;
        } else {
            if (!"6".equals(strGroup)) {
                p000a.r.u(strGroup, "Unknown HEVC profile string: ", "MediaCodecUtil");
                return null;
            }
            i8 = 6;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            switch (str2.hashCode()) {
                case 70821:
                    if (!str2.equals("H30")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    }
                    break;
                case 70914:
                    if (!str2.equals("H60")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    }
                    break;
                case 70917:
                    if (!str2.equals("H63")) {
                        b8 = -1;
                    } else {
                        b8 = 15;
                    }
                    break;
                case 71007:
                    if (!str2.equals("H90")) {
                        b8 = -1;
                    } else {
                        b8 = 16;
                    }
                    break;
                case 71010:
                    if (!str2.equals("H93")) {
                        b8 = -1;
                    } else {
                        b8 = 17;
                    }
                    break;
                case 74665:
                    if (!str2.equals("L30")) {
                        b8 = -1;
                    } else {
                        b8 = 0;
                    }
                    break;
                case 74758:
                    if (!str2.equals("L60")) {
                        b8 = -1;
                    } else {
                        b8 = 1;
                    }
                    break;
                case 74761:
                    if (!str2.equals("L63")) {
                        b8 = -1;
                    } else {
                        b8 = 2;
                    }
                    break;
                case 74851:
                    if (!str2.equals("L90")) {
                        b8 = -1;
                    } else {
                        b8 = 3;
                    }
                    break;
                case 74854:
                    if (!str2.equals("L93")) {
                        b8 = -1;
                    } else {
                        b8 = 4;
                    }
                    break;
                case 2193639:
                    if (!str2.equals("H120")) {
                        b8 = -1;
                    } else {
                        b8 = 18;
                    }
                    break;
                case 2193642:
                    if (!str2.equals("H123")) {
                        b8 = -1;
                    } else {
                        b8 = 19;
                    }
                    break;
                case 2193732:
                    if (!str2.equals("H150")) {
                        b8 = -1;
                    } else {
                        b8 = 20;
                    }
                    break;
                case 2193735:
                    if (!str2.equals("H153")) {
                        b8 = -1;
                    } else {
                        b8 = 21;
                    }
                    break;
                case 2193738:
                    if (!str2.equals("H156")) {
                        b8 = -1;
                    } else {
                        b8 = 22;
                    }
                    break;
                case 2193825:
                    if (!str2.equals("H180")) {
                        b8 = -1;
                    } else {
                        b8 = 23;
                    }
                    break;
                case 2193828:
                    if (!str2.equals("H183")) {
                        b8 = -1;
                    } else {
                        b8 = 24;
                    }
                    break;
                case 2193831:
                    if (!str2.equals("H186")) {
                        b8 = -1;
                    } else {
                        b8 = 25;
                    }
                    break;
                case 2312803:
                    if (!str2.equals("L120")) {
                        b8 = -1;
                    } else {
                        b8 = 5;
                    }
                    break;
                case 2312806:
                    if (!str2.equals("L123")) {
                        b8 = -1;
                    }
                    break;
                case 2312896:
                    if (!str2.equals("L150")) {
                        b8 = -1;
                    } else {
                        b8 = 7;
                    }
                    break;
                case 2312899:
                    if (!str2.equals("L153")) {
                        b8 = -1;
                    } else {
                        b8 = 8;
                    }
                    break;
                case 2312902:
                    if (!str2.equals("L156")) {
                        b8 = -1;
                    } else {
                        b8 = 9;
                    }
                    break;
                case 2312989:
                    if (!str2.equals("L180")) {
                        b8 = -1;
                    } else {
                        b8 = 10;
                    }
                    break;
                case 2312992:
                    if (!str2.equals("L183")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    }
                    break;
                case 2312995:
                    if (!str2.equals("L186")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    }
                    break;
                default:
                    b8 = -1;
                    break;
            }
            switch (b8) {
                case 0:
                    numValueOf = 1;
                    break;
                case 1:
                    numValueOf = 4;
                    break;
                case 2:
                    numValueOf = 16;
                    break;
                case 3:
                    numValueOf = 64;
                    break;
                case 4:
                    numValueOf = 256;
                    break;
                case 5:
                    numValueOf = 1024;
                    break;
                case 6:
                    numValueOf = 4096;
                    break;
                case 7:
                    numValueOf = Integer.valueOf(Http2.INITIAL_MAX_FRAME_SIZE);
                    break;
                case 8:
                    numValueOf = 65536;
                    break;
                case 9:
                    numValueOf = 262144;
                    break;
                case 10:
                    numValueOf = 1048576;
                    break;
                case 11:
                    numValueOf = 4194304;
                    break;
                case 12:
                    numValueOf = Integer.valueOf(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
                    break;
                case 13:
                    numValueOf = 2;
                    break;
                case 14:
                    numValueOf = 8;
                    break;
                case 15:
                    numValueOf = 32;
                    break;
                case 16:
                    numValueOf = 128;
                    break;
                case 17:
                    numValueOf = Integer.valueOf(IMediaList.Event.ItemAdded);
                    break;
                case 18:
                    numValueOf = 2048;
                    break;
                case 19:
                    numValueOf = 8192;
                    break;
                case 20:
                    numValueOf = 32768;
                    break;
                case 21:
                    numValueOf = 131072;
                    break;
                case 22:
                    numValueOf = 524288;
                    break;
                case 23:
                    numValueOf = 2097152;
                    break;
                case 24:
                    numValueOf = 8388608;
                    break;
                case 25:
                    numValueOf = 33554432;
                    break;
                default:
                    numValueOf = null;
                    break;
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return new Pair(Integer.valueOf(i8), numValueOf);
        }
        p000a.r.u(str2, "Unknown HEVC level string: ", "MediaCodecUtil");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0177 A[Catch: Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0188 A[Catch: Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x018e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0190  */
    /* JADX WARN: Code duplicated, block: B:110:0x0199 A[Catch: Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x019e A[Catch: Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01ae A[Catch: Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:120:0x01c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:121:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x01f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x0148 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x025d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bd A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c5 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00cf A[Catch: Exception -> 0x0032, LOOP:1: B:49:0x00c3->B:53:0x00cf, LOOP_END, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00dd A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00e5 A[EDGE_INSN: B:58:0x00e5->B:84:0x0146 BREAK  A[LOOP:1: B:49:0x00c3->B:53:0x00cf]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e8 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f0 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00f8 A[EDGE_INSN: B:63:0x00f8->B:84:0x0146 BREAK  A[LOOP:1: B:49:0x00c3->B:53:0x00cf]] */
    /* JADX WARN: Code duplicated, block: B:64:0x00fb A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0103 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x010b A[EDGE_INSN: B:68:0x010b->B:84:0x0146 BREAK  A[LOOP:1: B:49:0x00c3->B:53:0x00cf]] */
    /* JADX WARN: Code duplicated, block: B:69:0x010e A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0116 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0121 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0129 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0134 A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x013c A[Catch: Exception -> 0x0032, TryCatch #3 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0035, B:16:0x0043, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:26:0x0067, B:28:0x0071, B:30:0x0079, B:32:0x0081, B:34:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:44:0x00ad, B:46:0x00b5, B:48:0x00bd, B:50:0x00c5, B:134:0x0213, B:137:0x0219, B:139:0x021f, B:140:0x0239, B:141:0x025c, B:53:0x00cf, B:54:0x00d4, B:56:0x00dd, B:59:0x00e8, B:61:0x00f0, B:64:0x00fb, B:66:0x0103, B:69:0x010e, B:71:0x0116, B:74:0x0121, B:76:0x0129, B:79:0x0134, B:81:0x013c), top: B:152:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0158 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x015a  */
    /* JADX WARN: Code duplicated, block: B:89:0x015b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x015d  */
    /* JADX WARN: Code duplicated, block: B:91:0x015f A[Catch: Exception -> 0x017c, TRY_LEAVE, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x016b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x016e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0170  */
    /* JADX WARN: Code duplicated, block: B:98:0x0171 A[Catch: Exception -> 0x017c, PHI: r6
      0x0171: PHI (r6v30 boolean) = (r6v29 boolean), (r6v28 boolean) binds: [B:97:0x0170, B:94:0x016b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {Exception -> 0x017c, blocks: (B:85:0x0148, B:91:0x015f, B:98:0x0171, B:100:0x0177, B:108:0x0191, B:110:0x0199, B:111:0x019e, B:113:0x01ae, B:115:0x01b6, B:104:0x0188), top: B:146:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    public static ArrayList f(YM ym, InterfaceC1051aN interfaceC1051aN) throws ZM {
        String[] supportedTypes;
        int length;
        int i8;
        String str;
        String str2;
        int i9;
        int i10;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        boolean zA;
        boolean zB;
        boolean zA2;
        boolean zB2;
        boolean z7;
        int i11;
        boolean zIsHardwareAccelerated;
        String strM;
        boolean zIsVendor;
        YM ym2 = ym;
        String str3 = "secure-playback";
        try {
            ArrayList arrayList = new ArrayList();
            String str4 = ym2.f17600a;
            int iZza = interfaceC1051aN.zza();
            boolean zZze = interfaceC1051aN.zze();
            int i12 = 0;
            while (i12 < iZza) {
                MediaCodecInfo mediaCodecInfoZzb = interfaceC1051aN.zzb(i12);
                int i13 = Et.f13234a;
                if (i13 < 29 || !mediaCodecInfoZzb.isAlias()) {
                    String name = mediaCodecInfoZzb.getName();
                    if (mediaCodecInfoZzb.isEncoder() || (!zZze && name.endsWith(".secure"))) {
                        str2 = str3;
                        i9 = i12;
                    } else if (i13 < 24 && (("OMX.SEC.aac.dec".equals(name) || "OMX.Exynos.AAC.Decoder".equals(name)) && "samsung".equals(Et.f13236c))) {
                        String str5 = Et.f13235b;
                        if (str5.startsWith("zeroflte") || str5.startsWith("zerolte") || str5.startsWith("zenlte") || "SC-05G".equals(str5) || "marinelteatt".equals(str5) || "404SC".equals(str5) || "SC-04G".equals(str5) || "SCV31".equals(str5)) {
                            str2 = str3;
                            i9 = i12;
                        } else if (i13 > 23) {
                            supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                            length = supportedTypes.length;
                            i8 = 0;
                            while (true) {
                                if (i8 >= length) {
                                    str = null;
                                    if (!str4.equals("video/dolby-vision")) {
                                        if (!str4.equals("video/mv-hevc")) {
                                            if (!str4.equals("audio/alac")) {
                                                if (!str4.equals("audio/flac")) {
                                                    if (!str4.equals("audio/ac3")) {
                                                        break;
                                                    }
                                                    str = "audio/lg-ac3";
                                                    break;
                                                }
                                                if (!str4.equals("audio/ac3")) {
                                                    break;
                                                }
                                                str = "audio/lg-ac3";
                                                break;
                                            }
                                            if (!str4.equals("audio/flac")) {
                                                if (!str4.equals("audio/ac3")) {
                                                    break;
                                                }
                                                str = "audio/lg-ac3";
                                                break;
                                            }
                                            if (!str4.equals("audio/ac3")) {
                                                break;
                                            }
                                            str = "audio/lg-ac3";
                                            break;
                                        }
                                        if (!"c2.qti.mvhevc.decoder".equals(name)) {
                                            break;
                                        }
                                        str = "video/x-mvhevc";
                                        break;
                                    }
                                    if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                        if (!"OMX.RTK.video.decoder".equals(name)) {
                                            str = "video/dv_hevc";
                                            break;
                                        }
                                        str = "video/dv_hevc";
                                        break;
                                    }
                                    str = "video/hevcdv";
                                    break;
                                }
                                str = supportedTypes[i8];
                                if (str.equalsIgnoreCase(str4)) {
                                    break;
                                    break;
                                }
                                i8++;
                            }
                            if (str != null) {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str);
                                zA = interfaceC1051aN.a("tunneled-playback", str, capabilitiesForType);
                                zB = interfaceC1051aN.b("tunneled-playback", capabilitiesForType);
                                if (ym2.f17602c) {
                                    if (zA) {
                                        zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                        zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                        z7 = ym2.f17601b;
                                        if (z7) {
                                            if (zA2) {
                                                zA2 = true;
                                                i11 = Et.f13234a;
                                                if (i11 >= 29) {
                                                    zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                                } else if (g(mediaCodecInfoZzb, str4)) {
                                                    zIsHardwareAccelerated = false;
                                                } else {
                                                    zIsHardwareAccelerated = true;
                                                }
                                                boolean zG = g(mediaCodecInfoZzb, str4);
                                                if (i11 >= 29) {
                                                    zIsVendor = mediaCodecInfoZzb.isVendor();
                                                } else {
                                                    strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                    if (strM.startsWith("omx.google.")) {
                                                        zIsVendor = false;
                                                    } else {
                                                        zIsVendor = false;
                                                    }
                                                }
                                                if (zZze) {
                                                    str2 = str3;
                                                    str = str;
                                                    name = name;
                                                    i9 = i12;
                                                    i10 = 23;
                                                    if (zZze) {
                                                        continue;
                                                    }
                                                } else {
                                                    str2 = str3;
                                                    str = str;
                                                    name = name;
                                                    i9 = i12;
                                                    i10 = 23;
                                                    if (zZze) {
                                                        continue;
                                                    }
                                                }
                                            }
                                        } else if (!zB2) {
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG2 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                } else if (!zB) {
                                    zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                    zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                    z7 = ym2.f17601b;
                                    if (z7) {
                                        if (!zB2) {
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG3 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    } else if (zA2) {
                                        zA2 = true;
                                        i11 = Et.f13234a;
                                        if (i11 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (g(mediaCodecInfoZzb, str4)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        boolean zG4 = g(mediaCodecInfoZzb, str4);
                                        if (i11 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                            if (strM.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (zZze) {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                }
                                str2 = str3;
                                i9 = i12;
                            } else {
                                str2 = str3;
                                i9 = i12;
                            }
                        } else {
                            supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                            length = supportedTypes.length;
                            i8 = 0;
                            while (true) {
                                if (i8 >= length) {
                                    str = null;
                                    if (!str4.equals("video/dolby-vision")) {
                                        if (!str4.equals("video/mv-hevc")) {
                                            if (!str4.equals("audio/alac")) {
                                                if (!str4.equals("audio/flac")) {
                                                    if (!str4.equals("audio/ac3")) {
                                                        break;
                                                    }
                                                    str = "audio/lg-ac3";
                                                    break;
                                                }
                                                if (!str4.equals("audio/ac3")) {
                                                    break;
                                                }
                                                str = "audio/lg-ac3";
                                                break;
                                            }
                                            if (!str4.equals("audio/flac")) {
                                                if (!str4.equals("audio/ac3")) {
                                                    break;
                                                }
                                                str = "audio/lg-ac3";
                                                break;
                                            }
                                            if (!str4.equals("audio/ac3")) {
                                                break;
                                            }
                                            str = "audio/lg-ac3";
                                            break;
                                        }
                                        if (!"c2.qti.mvhevc.decoder".equals(name)) {
                                            break;
                                        }
                                        str = "video/x-mvhevc";
                                        break;
                                    }
                                    if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                        if (!"OMX.RTK.video.decoder".equals(name)) {
                                            str = "video/dv_hevc";
                                            break;
                                        }
                                        str = "video/dv_hevc";
                                        break;
                                    }
                                    str = "video/hevcdv";
                                    break;
                                }
                                str = supportedTypes[i8];
                                if (str.equalsIgnoreCase(str4)) {
                                    break;
                                    break;
                                }
                                i8++;
                            }
                            if (str != null) {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str);
                                zA = interfaceC1051aN.a("tunneled-playback", str, capabilitiesForType);
                                zB = interfaceC1051aN.b("tunneled-playback", capabilitiesForType);
                                if (ym2.f17602c) {
                                    if (!zB) {
                                        zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                        zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                        z7 = ym2.f17601b;
                                        if (z7) {
                                            if (!zB2) {
                                                i11 = Et.f13234a;
                                                if (i11 >= 29) {
                                                    zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                                } else if (g(mediaCodecInfoZzb, str4)) {
                                                    zIsHardwareAccelerated = true;
                                                } else {
                                                    zIsHardwareAccelerated = false;
                                                }
                                                boolean zG5 = g(mediaCodecInfoZzb, str4);
                                                if (i11 >= 29) {
                                                    zIsVendor = mediaCodecInfoZzb.isVendor();
                                                } else {
                                                    strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                    if (strM.startsWith("omx.google.")) {
                                                        zIsVendor = false;
                                                    } else {
                                                        zIsVendor = false;
                                                    }
                                                }
                                                if (zZze) {
                                                    str2 = str3;
                                                    str = str;
                                                    name = name;
                                                    i9 = i12;
                                                    i10 = 23;
                                                    if (zZze) {
                                                        continue;
                                                    }
                                                } else {
                                                    str2 = str3;
                                                    str = str;
                                                    name = name;
                                                    i9 = i12;
                                                    i10 = 23;
                                                    if (zZze) {
                                                        continue;
                                                    }
                                                }
                                            }
                                        } else if (zA2) {
                                            zA2 = true;
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG6 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                } else if (zA) {
                                    zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                    zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                    z7 = ym2.f17601b;
                                    if (z7) {
                                        if (!zB2) {
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG7 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    } else if (zA2) {
                                        zA2 = true;
                                        i11 = Et.f13234a;
                                        if (i11 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (g(mediaCodecInfoZzb, str4)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        boolean zG8 = g(mediaCodecInfoZzb, str4);
                                        if (i11 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                            if (strM.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (zZze) {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                }
                                str2 = str3;
                                i9 = i12;
                            } else {
                                str2 = str3;
                                i9 = i12;
                            }
                        }
                    } else if (i13 > 23 && "audio/eac3-joc".equals(str4) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(name)) {
                        str2 = str3;
                        i9 = i12;
                    } else {
                        supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                        length = supportedTypes.length;
                        i8 = 0;
                        while (true) {
                            if (i8 >= length) {
                                str = null;
                                if (!str4.equals("video/dolby-vision")) {
                                    if (!str4.equals("video/mv-hevc")) {
                                        if (!str4.equals("audio/alac") && "OMX.lge.alac.decoder".equals(name)) {
                                            str = "audio/x-lg-alac";
                                            break;
                                        }
                                        if (!str4.equals("audio/flac") && "OMX.lge.flac.decoder".equals(name)) {
                                            str = "audio/x-lg-flac";
                                            break;
                                        }
                                        if (!str4.equals("audio/ac3") || !"OMX.lge.ac3.decoder".equals(name)) {
                                            break;
                                            break;
                                        }
                                        str = "audio/lg-ac3";
                                        break;
                                    }
                                    if (!"c2.qti.mvhevc.decoder".equals(name)) {
                                        break;
                                    }
                                    str = "video/x-mvhevc";
                                    break;
                                }
                                if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                    if (!"OMX.RTK.video.decoder".equals(name) && !"OMX.realtek.video.decoder.tunneled".equals(name)) {
                                        break;
                                    }
                                    str = "video/dv_hevc";
                                    break;
                                }
                                str = "video/hevcdv";
                                break;
                            }
                            str = supportedTypes[i8];
                            if (str.equalsIgnoreCase(str4)) {
                                break;
                            }
                            i8++;
                        }
                        if (str != null) {
                            try {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str);
                                zA = interfaceC1051aN.a("tunneled-playback", str, capabilitiesForType);
                                zB = interfaceC1051aN.b("tunneled-playback", capabilitiesForType);
                                if (ym2.f17602c) {
                                    if (!zB) {
                                        zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                        zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                        z7 = ym2.f17601b;
                                        if (z7) {
                                            if (!zB2) {
                                                i11 = Et.f13234a;
                                                if (i11 >= 29) {
                                                    zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                                } else if (g(mediaCodecInfoZzb, str4)) {
                                                    zIsHardwareAccelerated = true;
                                                } else {
                                                    zIsHardwareAccelerated = false;
                                                }
                                                boolean zG9 = g(mediaCodecInfoZzb, str4);
                                                if (i11 >= 29) {
                                                    zIsVendor = mediaCodecInfoZzb.isVendor();
                                                } else {
                                                    strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                    if (strM.startsWith("omx.google.") || strM.startsWith("c2.android.") || strM.startsWith("c2.google.")) {
                                                        zIsVendor = false;
                                                    } else {
                                                        zIsVendor = true;
                                                    }
                                                }
                                                if ((zZze || z7 != zA2) && (zZze || z7)) {
                                                    str2 = str3;
                                                    str = str;
                                                    name = name;
                                                    i9 = i12;
                                                    i10 = 23;
                                                    if (zZze && zA2) {
                                                        try {
                                                            arrayList.add(PM.b(name + ".secure", str4, str, capabilitiesForType, zIsHardwareAccelerated, zG9, zIsVendor, true));
                                                            break;
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            if (Et.f13234a <= i10) {
                                                            }
                                                            Zo.c("MediaCodecUtil", "Failed to query codec " + name + " (" + str + ")");
                                                            throw e;
                                                        }
                                                    }
                                                } else {
                                                    str2 = str3;
                                                    i9 = i12;
                                                    try {
                                                        arrayList.add(PM.b(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zG9, zIsVendor, false));
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        i10 = 23;
                                                        if (Et.f13234a <= i10 || arrayList.isEmpty()) {
                                                            Zo.c("MediaCodecUtil", "Failed to query codec " + name + " (" + str + ")");
                                                            throw e;
                                                        }
                                                        Zo.c("MediaCodecUtil", "Skipping codec " + name + " (failed to query capabilities)");
                                                    }
                                                }
                                            }
                                        } else if (zA2) {
                                            zA2 = true;
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG10 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                } else if (zA) {
                                    zA2 = interfaceC1051aN.a(str3, str, capabilitiesForType);
                                    zB2 = interfaceC1051aN.b(str3, capabilitiesForType);
                                    z7 = ym2.f17601b;
                                    if (z7) {
                                        if (!zB2) {
                                            i11 = Et.f13234a;
                                            if (i11 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (g(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            boolean zG11 = g(mediaCodecInfoZzb, str4);
                                            if (i11 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                                if (strM.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (zZze) {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            } else {
                                                str2 = str3;
                                                str = str;
                                                name = name;
                                                i9 = i12;
                                                i10 = 23;
                                                if (zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    } else if (zA2) {
                                        zA2 = true;
                                        i11 = Et.f13234a;
                                        if (i11 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (g(mediaCodecInfoZzb, str4)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        boolean zG12 = g(mediaCodecInfoZzb, str4);
                                        if (i11 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strM = p113o3.r.m(mediaCodecInfoZzb.getName());
                                            if (strM.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (zZze) {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            str2 = str3;
                                            str = str;
                                            name = name;
                                            i9 = i12;
                                            i10 = 23;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                }
                                str2 = str3;
                                i9 = i12;
                            } catch (Exception e10) {
                                e = e10;
                                str2 = str3;
                                i9 = i12;
                            }
                        } else {
                            str2 = str3;
                            i9 = i12;
                        }
                    }
                } else {
                    str2 = str3;
                    i9 = i12;
                }
                i12 = i9 + 1;
                ym2 = ym;
                str3 = str2;
            }
            return arrayList;
        } catch (Exception e11) {
            throw new ZM("Failed to query underlying media codecs", e11);
        }
    }

    public static boolean g(MediaCodecInfo mediaCodecInfo, String str) {
        if (Et.f13234a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if ("audio".equals(AbstractC2140va.h(str))) {
            return true;
        }
        String strM = p113o3.r.m(mediaCodecInfo.getName());
        if (strM.startsWith("arc.")) {
            return false;
        }
        if (strM.startsWith("omx.google.") || strM.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strM.startsWith("omx.sec.") && strM.contains(".sw.")) || strM.equals("omx.qcom.video.decoder.hevcswvdec") || strM.startsWith("c2.android.") || strM.startsWith("c2.google.")) {
            return true;
        }
        return (strM.startsWith("omx.") || strM.startsWith("c2.")) ? false : true;
    }
}
