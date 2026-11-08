package K0;

import C0.C0082g;
import N.C0260i;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p094m0.C3136t;
import p094m0.O;
import p117p0.AbstractC3169g;
import z4.E;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f4454a = new HashMap();

    public static void a(String str, ArrayList arrayList) {
        int i8 = 0;
        if ("audio/raw".equals(str)) {
            if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && arrayList.size() == 1 && ((o) arrayList.get(0)).f4355a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayList.add(o.i("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
            }
            Collections.sort(arrayList, new t(new C0260i(16), i8));
        }
        if (Build.VERSION.SDK_INT >= 32 || arrayList.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((o) arrayList.get(0)).f4355a)) {
            return;
        }
        arrayList.add((o) arrayList.remove(0));
    }

    public static String b(C3136t c3136t) {
        Pair pairB;
        if ("audio/eac3-joc".equals(c3136t.f27041o)) {
            return "audio/eac3";
        }
        String str = c3136t.f27041o;
        if ("video/dolby-vision".equals(str) && (pairB = AbstractC3169g.b(c3136t)) != null) {
            int iIntValue = ((Integer) pairB.first).intValue();
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

    public static String c(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static synchronized List d(String str, boolean z7, boolean z8) {
        try {
            u uVar = new u(str, z7, z8);
            HashMap map = f4454a;
            List list = (List) map.get(uVar);
            if (list != null) {
                return list;
            }
            ArrayList arrayListE = e(uVar, new x(z7, z8, str.equals("video/mv-hevc")));
            if (z7 && arrayListE.isEmpty() && Build.VERSION.SDK_INT <= 23) {
                arrayListE = e(uVar, new U4.b());
                if (!arrayListE.isEmpty()) {
                    p117p0.x.f("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((o) arrayListE.get(0)).f4355a);
                }
            }
            a(str, arrayListE);
            H hS = H.s(arrayListE);
            map.put(uVar, hS);
            return hS;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    public static ArrayList e(u uVar, w wVar) throws v {
        String strC;
        String str;
        String str2;
        int i8;
        boolean z7;
        boolean zIsVendor;
        u uVar2 = uVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str3 = uVar2.f4449a;
            int iE = wVar.E();
            boolean zM = wVar.M();
            int i9 = 0;
            while (i9 < iE) {
                MediaCodecInfo mediaCodecInfoE = wVar.e(i9);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 29 || !mediaCodecInfoE.isAlias()) {
                    String name = mediaCodecInfoE.getName();
                    if (g(mediaCodecInfoE, name, zM, str3) && (strC = c(mediaCodecInfoE, name, str3)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoE.getCapabilitiesForType(strC);
                            boolean zS = wVar.s("tunneled-playback", strC, capabilitiesForType);
                            boolean zD = wVar.D("tunneled-playback", capabilitiesForType);
                            boolean z8 = uVar2.f4451c;
                            if ((z8 || !zD) && (!z8 || zS)) {
                                boolean zS2 = wVar.s("secure-playback", strC, capabilitiesForType);
                                boolean zD2 = wVar.D("secure-playback", capabilitiesForType);
                                boolean z9 = uVar2.f4450b;
                                if ((z9 || !zD2) && (!z9 || zS2)) {
                                    boolean zIsHardwareAccelerated = i10 >= 29 ? mediaCodecInfoE.isHardwareAccelerated() : !h(mediaCodecInfoE, str3);
                                    boolean zH = h(mediaCodecInfoE, str3);
                                    if (i10 >= 29) {
                                        zIsVendor = mediaCodecInfoE.isVendor();
                                    } else {
                                        String strH0 = p190y4.k.h0(mediaCodecInfoE.getName());
                                        zIsVendor = (strH0.startsWith("omx.google.") || strH0.startsWith("c2.android.") || strH0.startsWith("c2.google.")) ? false : true;
                                    }
                                    if (!(zM && z9 == zS2) && (zM || z9)) {
                                        str = strC;
                                        i8 = i9;
                                        z7 = zM;
                                        if (!z7 && zS2) {
                                            StringBuilder sb = new StringBuilder();
                                            try {
                                                sb.append(name);
                                                sb.append(".secure");
                                                str2 = name;
                                                try {
                                                    arrayList.add(o.i(sb.toString(), str3, str, capabilitiesForType, zIsHardwareAccelerated, zH, zIsVendor, true));
                                                    return arrayList;
                                                } catch (Exception e8) {
                                                    e = e8;
                                                    if (Build.VERSION.SDK_INT <= 23 || arrayList.isEmpty()) {
                                                        p117p0.x.c("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                        throw e;
                                                    }
                                                    p117p0.x.c("MediaCodecUtil", "Skipping codec " + str2 + " (failed to query capabilities)");
                                                    i9 = i8 + 1;
                                                    uVar2 = uVar;
                                                    zM = z7;
                                                }
                                            } catch (Exception e9) {
                                                e = e9;
                                                str2 = name;
                                            }
                                        }
                                    } else {
                                        str = strC;
                                        i8 = i9;
                                        z7 = zM;
                                        try {
                                            arrayList.add(o.i(name, str3, strC, capabilitiesForType, zIsHardwareAccelerated, zH, zIsVendor, false));
                                        } catch (Exception e10) {
                                            e = e10;
                                            str2 = name;
                                            if (Build.VERSION.SDK_INT <= 23) {
                                            }
                                            p117p0.x.c("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                            throw e;
                                        }
                                    }
                                } else {
                                    i8 = i9;
                                    z7 = zM;
                                }
                            } else {
                                i8 = i9;
                                z7 = zM;
                            }
                        } catch (Exception e11) {
                            e = e11;
                            str = strC;
                            str2 = name;
                            i8 = i9;
                            z7 = zM;
                        }
                    } else {
                        i8 = i9;
                        z7 = zM;
                    }
                } else {
                    i8 = i9;
                    z7 = zM;
                }
                i9 = i8 + 1;
                uVar2 = uVar;
                zM = z7;
            }
            return arrayList;
        } catch (Exception e12) {
            throw new v("Failed to query underlying media codecs", e12);
        }
    }

    public static d0 f(s sVar, C3136t c3136t, boolean z7, boolean z8) {
        List listD;
        String str = c3136t.f27041o;
        C0082g c0082g = (C0082g) sVar;
        c0082g.getClass();
        List listD2 = d(str, z7, z8);
        String strB = b(c3136t);
        if (strB == null) {
            listD = d0.f31844K;
        } else {
            c0082g.getClass();
            listD = d(strB, z7, z8);
        }
        E eQ = H.q();
        eQ.j0(listD2);
        eQ.j0(listD);
        return eQ.m0();
    }

    public static boolean g(MediaCodecInfo mediaCodecInfo, String str, boolean z7, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z7 && str.endsWith(".secure"))) {
            return false;
        }
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Build.MANUFACTURER))) {
            String str3 = Build.DEVICE;
            if (str3.startsWith("zeroflte") || str3.startsWith("zerolte") || str3.startsWith("zenlte") || "SC-05G".equals(str3) || "marinelteatt".equals(str3) || "404SC".equals(str3) || "SC-04G".equals(str3) || "SCV31".equals(str3)) {
                return false;
            }
        }
        return (i8 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static boolean h(MediaCodecInfo mediaCodecInfo, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (O.k(str)) {
            return true;
        }
        String strH0 = p190y4.k.h0(mediaCodecInfo.getName());
        if (strH0.startsWith("arc.")) {
            return false;
        }
        if (strH0.startsWith("omx.google.") || strH0.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strH0.startsWith("omx.sec.") && strH0.contains(".sw.")) || strH0.equals("omx.qcom.video.decoder.hevcswvdec") || strH0.startsWith("c2.android.") || strH0.startsWith("c2.google.")) {
            return true;
        }
        return (strH0.startsWith("omx.") || strH0.startsWith("c2.")) ? false : true;
    }
}
