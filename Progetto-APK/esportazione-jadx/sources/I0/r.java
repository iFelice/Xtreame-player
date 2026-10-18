package I0;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.AbstractC3124g;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p117p0.M;
import p117p0.x;
import p141s0.C3186k;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class r implements S0.o {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final o f3993G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final l f3994H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Pattern f3929I = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f3931J = Pattern.compile("VIDEO=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Pattern f3933K = Pattern.compile("AUDIO=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Pattern f3935L = Pattern.compile("SUBTITLES=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f3937M = Pattern.compile("CLOSED-CAPTIONS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Pattern f3939N = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Pattern f3941O = Pattern.compile("CHANNELS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final Pattern f3943P = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Pattern f3945Q = Pattern.compile("CODECS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final Pattern f3947R = Pattern.compile("SUPPLEMENTAL-CODECS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final Pattern f3949S = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final Pattern f3951T = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final Pattern f3953U = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final Pattern f3955V = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final Pattern f3957W = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final Pattern f3959X = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final Pattern f3961Y = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final Pattern f3963Z = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final Pattern f3965a0 = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final Pattern f3967b0 = a("CAN-SKIP-DATERANGES");

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final Pattern f3969c0 = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final Pattern f3970d0 = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final Pattern f3971e0 = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final Pattern f3972f0 = a("CAN-BLOCK-RELOAD");

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final Pattern f3973g0 = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Pattern f3974h0 = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final Pattern f3975i0 = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final Pattern f3976j0 = Pattern.compile("LAST-MSN=(\\d+)\\b");

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final Pattern f3977k0 = Pattern.compile("LAST-PART=(\\d+)\\b");

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final Pattern f3978l0 = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final Pattern f3979m0 = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final Pattern f3980n0 = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final Pattern f3981o0 = Pattern.compile("BYTERANGE-START=(\\d+)\\b");

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final Pattern f3982p0 = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final Pattern f3983q0 = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final Pattern f3984r0 = Pattern.compile("KEYFORMAT=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final Pattern f3985s0 = Pattern.compile("KEYFORMATVERSIONS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final Pattern f3986t0 = Pattern.compile("URI=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final Pattern f3987u0 = Pattern.compile("IV=([^,.*]+)");

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final Pattern f3988v0 = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final Pattern f3989w0 = Pattern.compile("TYPE=(PART|MAP)");

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final Pattern f3990x0 = Pattern.compile("LANGUAGE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final Pattern f3991y0 = Pattern.compile("NAME=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final Pattern f3992z0 = Pattern.compile("GROUP-ID=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public static final Pattern f3921A0 = Pattern.compile("CHARACTERISTICS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static final Pattern f3922B0 = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public static final Pattern f3923C0 = a("AUTOSELECT");

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public static final Pattern f3924D0 = a("DEFAULT");

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static final Pattern f3925E0 = a("FORCED");

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static final Pattern f3926F0 = a("INDEPENDENT");

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static final Pattern f3927G0 = a("GAP");

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static final Pattern f3928H0 = a("PRECISE");

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public static final Pattern f3930I0 = Pattern.compile("VALUE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public static final Pattern f3932J0 = Pattern.compile("IMPORT=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public static final Pattern f3934K0 = Pattern.compile("[:,]ID=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public static final Pattern f3936L0 = Pattern.compile("CLASS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public static final Pattern f3938M0 = Pattern.compile("START-DATE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public static final Pattern f3940N0 = Pattern.compile("CUE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public static final Pattern f3942O0 = Pattern.compile("END-DATE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public static final Pattern f3944P0 = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public static final Pattern f3946Q0 = a("END-ON-NEXT");

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public static final Pattern f3948R0 = Pattern.compile("X-ASSET-URI=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public static final Pattern f3950S0 = Pattern.compile("X-ASSET-LIST=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public static final Pattern f3952T0 = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public static final Pattern f3954U0 = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public static final Pattern f3956V0 = Pattern.compile("X-SNAP=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public static final Pattern f3958W0 = Pattern.compile("X-RESTRICT=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public static final Pattern f3960X0 = Pattern.compile("X-CONTENT-MAY-VARY=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public static final Pattern f3962Y0 = Pattern.compile("X-TIMELINE-OCCUPIES=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public static final Pattern f3964Z0 = Pattern.compile("X-TIMELINE-STYLE=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final Pattern f3966a1 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final Pattern f3968b1 = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

    public r(o oVar, l lVar) {
        this.f3993G = oVar;
        this.f3994H = lVar;
    }

    public static Pattern a(String str) {
        return Pattern.compile(str.concat("=(NO|YES)"));
    }

    public static C3131n b(String str, C3130m[] c3130mArr) {
        C3130m[] c3130mArr2 = new C3130m[c3130mArr.length];
        for (int i8 = 0; i8 < c3130mArr.length; i8++) {
            C3130m c3130m = c3130mArr[i8];
            c3130mArr2[i8] = new C3130m(c3130m.f26954H, c3130m.f26955I, c3130m.f26956J, null);
        }
        return new C3131n(str, true, c3130mArr2);
    }

    public static C3130m c(String str, String str2, HashMap map) throws P {
        String strI = i(str, f3985s0, "1", map);
        boolean zEquals = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2);
        Pattern pattern = f3986t0;
        if (zEquals) {
            String strJ = j(str, pattern, map);
            return new C3130m(AbstractC3124g.f26855d, null, "video/mp4", Base64.decode(strJ.substring(strJ.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            UUID uuid = AbstractC3124g.f26855d;
            String str3 = M.f28050a;
            return new C3130m(uuid, null, "hls", str.getBytes(StandardCharsets.UTF_8));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(strI)) {
            return null;
        }
        String strJ2 = j(str, pattern, map);
        byte[] bArrDecode = Base64.decode(strJ2.substring(strJ2.indexOf(44)), 0);
        UUID uuid2 = AbstractC3124g.f26856e;
        return new C3130m(uuid2, null, "video/mp4", E3.f.b(uuid2, null, bArrDecode));
    }

    /* JADX WARN: Code duplicated, block: B:341:0x0910  */
    /* JADX WARN: Code duplicated, block: B:350:0x092e  */
    public static l d(o oVar, l lVar, p096m2.u uVar, String str) throws P, q {
        ArrayList arrayList;
        int i8;
        TreeMap treeMap;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2;
        LinkedHashMap linkedHashMap;
        int i9;
        int i10;
        long j8;
        String str3;
        ArrayList arrayList4;
        long j9;
        String str4;
        C3131n c3131n;
        String str5;
        String str6;
        long j10;
        ArrayList arrayList5;
        long j11;
        long j12;
        ArrayList arrayList6;
        long j13;
        Matcher matcher;
        d dVar;
        String[] strArr;
        oVar = oVar;
        lVar = lVar;
        boolean z7 = oVar.f3920c;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        k kVar = new k(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, false);
        TreeMap treeMap2 = new TreeMap();
        String str7 = HttpUrl.FRAGMENT_ENCODE_SET;
        boolean z8 = z7;
        k kVar2 = kVar;
        String strI = HttpUrl.FRAGMENT_ENCODE_SET;
        long jR = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        long jLongValue = 0;
        long j19 = 0;
        long j20 = -1;
        int i11 = 0;
        long j21 = -9223372036854775807L;
        boolean zF = false;
        boolean z9 = false;
        int i12 = 0;
        int i13 = 1;
        long j22 = -9223372036854775807L;
        long j23 = -9223372036854775807L;
        boolean z10 = false;
        C3131n c3131nB = null;
        C3131n c3131n2 = null;
        boolean z11 = false;
        String strJ = null;
        String strI2 = null;
        String str8 = null;
        int i14 = 0;
        boolean z12 = false;
        i iVar = null;
        ArrayList arrayList11 = arrayList8;
        g gVar = null;
        while (uVar.E()) {
            String strI3 = uVar.I();
            if (strI3.startsWith("#EXT")) {
                arrayList10.add(strI3);
            }
            if (strI3.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String strJ2 = j(strI3, f3963Z, map);
                if ("VOD".equals(strJ2)) {
                    i11 = 1;
                } else if ("EVENT".equals(strJ2)) {
                    i11 = 2;
                }
            } else if (strI3.equals("#EXT-X-I-FRAMES-ONLY")) {
                z12 = true;
            } else if (strI3.startsWith("#EXT-X-START")) {
                j21 = (long) (Double.parseDouble(j(strI3, f3978l0, Collections.emptyMap())) * 1000000.0d);
                zF = f(strI3, f3928H0);
                arrayList10 = arrayList10;
                linkedHashMap2 = linkedHashMap2;
            } else {
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                ArrayList arrayList12 = arrayList10;
                if (strI3.startsWith("#EXT-X-SERVER-CONTROL")) {
                    arrayList = arrayList11;
                    double dG = g(strI3, f3965a0, -9.223372036854776E18d);
                    long j24 = dG == -9.223372036854776E18d ? -9223372036854775807L : (long) (dG * 1000000.0d);
                    boolean zF2 = f(strI3, f3967b0);
                    double dG2 = g(strI3, f3970d0, -9.223372036854776E18d);
                    long j25 = dG2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dG2 * 1000000.0d);
                    double dG3 = g(strI3, f3971e0, -9.223372036854776E18d);
                    kVar2 = new k(j24, j25, dG3 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dG3 * 1000000.0d), zF2, f(strI3, f3972f0));
                } else {
                    arrayList = arrayList11;
                    if (strI3.startsWith("#EXT-X-PART-INF")) {
                        j23 = (long) (Double.parseDouble(j(strI3, f3959X, Collections.emptyMap())) * 1000000.0d);
                    } else {
                        boolean zStartsWith = strI3.startsWith("#EXT-X-MAP");
                        Pattern pattern = f3980n0;
                        linkedHashMap2 = linkedHashMap3;
                        Pattern pattern2 = f3986t0;
                        if (zStartsWith) {
                            String strJ3 = j(strI3, pattern2, map);
                            String strI4 = i(strI3, pattern, null, map);
                            if (strI4 != null) {
                                String str9 = M.f28050a;
                                String[] strArrSplit = strI4.split("@", -1);
                                j20 = Long.parseLong(strArrSplit[0]);
                                if (strArrSplit.length > 1) {
                                    j15 = Long.parseLong(strArrSplit[1]);
                                }
                            }
                            if (j20 == -1) {
                                j15 = 0;
                            }
                            if (strJ != null && strI2 == null) {
                                throw P.b("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                            }
                            iVar = new i(j15, j20, strJ3, strJ, strI2);
                            if (j20 != -1) {
                                j15 += j20;
                            }
                            arrayList10 = arrayList12;
                            j20 = -1;
                            arrayList11 = arrayList;
                            linkedHashMap2 = linkedHashMap2;
                        } else {
                            map2 = map2;
                            g gVar2 = gVar;
                            if (strI3.startsWith("#EXT-X-TARGETDURATION")) {
                                j22 = ((long) Integer.parseInt(j(strI3, f3953U, Collections.emptyMap()))) * 1000000;
                            } else if (strI3.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                j16 = Long.parseLong(j(strI3, f3973g0, Collections.emptyMap()));
                                arrayList10 = arrayList12;
                                j14 = j16;
                                arrayList11 = arrayList;
                                linkedHashMap2 = linkedHashMap2;
                                map2 = map2;
                                gVar = gVar2;
                            } else if (strI3.startsWith("#EXT-X-VERSION")) {
                                i13 = Integer.parseInt(j(strI3, f3961Y, Collections.emptyMap()));
                            } else {
                                if (strI3.startsWith("#EXT-X-DEFINE")) {
                                    String strI5 = i(strI3, f3932J0, null, map);
                                    if (strI5 != null) {
                                        String str10 = (String) oVar.f3916l.get(strI5);
                                        if (str10 != null) {
                                            map.put(strI5, str10);
                                        }
                                    } else {
                                        map.put(j(strI3, f3991y0, map), j(strI3, f3930I0, map));
                                    }
                                    i8 = i11;
                                    map = map;
                                    arrayList9 = arrayList9;
                                    treeMap = treeMap2;
                                    arrayList2 = arrayList12;
                                    str7 = str7;
                                    arrayList3 = arrayList7;
                                    str2 = str8;
                                    linkedHashMap = linkedHashMap2;
                                } else if (strI3.startsWith("#EXTINF")) {
                                    jLongValue = new BigDecimal(j(strI3, f3974h0, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
                                    strI = i(strI3, f3975i0, str7, map);
                                } else {
                                    if (strI3.startsWith("#EXT-X-SKIP")) {
                                        int i15 = Integer.parseInt(j(strI3, f3969c0, Collections.emptyMap()));
                                        H1.i(lVar != null && arrayList7.isEmpty());
                                        String str11 = M.f28050a;
                                        int i16 = (int) (j14 - lVar.f3885k);
                                        int i17 = i15 + i16;
                                        if (i16 >= 0) {
                                            H h8 = lVar.f3892r;
                                            if (i17 <= h8.size()) {
                                                while (i16 < i17) {
                                                    i iVar2 = (i) h8.get(i16);
                                                    ArrayList arrayList13 = arrayList12;
                                                    if (j14 != lVar.f3885k) {
                                                        int i18 = (lVar.f3884j - i12) + iVar2.f3865J;
                                                        ArrayList arrayList14 = new ArrayList();
                                                        long j26 = j18;
                                                        int i19 = 0;
                                                        while (true) {
                                                            H h9 = iVar2.f3861S;
                                                            if (i19 < h9.size()) {
                                                                g gVar3 = (g) h9.get(i19);
                                                                arrayList14.add(new g(gVar3.f3862G, gVar3.f3863H, gVar3.f3864I, i18, j26, gVar3.f3867L, gVar3.f3868M, gVar3.f3869N, gVar3.f3870O, gVar3.f3871P, gVar3.f3872Q, gVar3.f3855R, gVar3.f3856S));
                                                                j26 += gVar3.f3864I;
                                                                i19++;
                                                                i11 = i11;
                                                            } else {
                                                                i9 = i11;
                                                                iVar2 = new i(iVar2.f3862G, iVar2.f3863H, iVar2.f3860R, iVar2.f3864I, i18, j18, iVar2.f3867L, iVar2.f3868M, iVar2.f3869N, iVar2.f3870O, iVar2.f3871P, iVar2.f3872Q, arrayList14);
                                                            }
                                                        }
                                                    } else {
                                                        i9 = i11;
                                                    }
                                                    arrayList7.add(iVar2);
                                                    j18 += iVar2.f3864I;
                                                    long j27 = iVar2.f3871P;
                                                    if (j27 != -1) {
                                                        j15 = iVar2.f3870O + j27;
                                                    }
                                                    String str12 = iVar2.f3869N;
                                                    if (str12 == null || !str12.equals(Long.toHexString(j16))) {
                                                        strI2 = str12;
                                                    }
                                                    j16++;
                                                    i16++;
                                                    i14 = iVar2.f3865J;
                                                    iVar = iVar2.f3863H;
                                                    c3131n2 = iVar2.f3867L;
                                                    strJ = iVar2.f3868M;
                                                    j17 = j18;
                                                    arrayList12 = arrayList13;
                                                    i11 = i9;
                                                    lVar = lVar;
                                                }
                                                oVar = oVar;
                                                lVar = lVar;
                                            }
                                        }
                                        throw new q();
                                    }
                                    i8 = i11;
                                    arrayList2 = arrayList12;
                                    if (strI3.startsWith("#EXT-X-KEY")) {
                                        String strJ4 = j(strI3, f3983q0, map);
                                        String strI6 = i(strI3, f3984r0, "identity", map);
                                        if ("NONE".equals(strJ4)) {
                                            treeMap2.clear();
                                            c3131n2 = null;
                                            strJ = null;
                                            strI2 = null;
                                        } else {
                                            strI2 = i(strI3, f3987u0, null, map);
                                            if (!"identity".equals(strI6)) {
                                                String str13 = str8;
                                                str8 = str13 == null ? ("SAMPLE-AES-CENC".equals(strJ4) || "SAMPLE-AES-CTR".equals(strJ4)) ? "cenc" : "cbcs" : str13;
                                                C3130m c3130mC = c(strI3, strI6, map);
                                                if (c3130mC != null) {
                                                    treeMap2.put(strI6, c3130mC);
                                                    c3131n2 = null;
                                                }
                                                strJ = null;
                                            } else if ("AES-128".equals(strJ4)) {
                                                strJ = j(strI3, pattern2, map);
                                                strI2 = strI2;
                                            }
                                            strJ = null;
                                        }
                                    } else {
                                        String str14 = str8;
                                        if (strI3.startsWith("#EXT-X-BYTERANGE")) {
                                            String strJ5 = j(strI3, f3979m0, map);
                                            String str15 = M.f28050a;
                                            String[] strArrSplit2 = strJ5.split("@", -1);
                                            j20 = Long.parseLong(strArrSplit2[0]);
                                            if (strArrSplit2.length > 1) {
                                                j15 = Long.parseLong(strArrSplit2[1]);
                                            }
                                        } else if (strI3.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                            i12 = Integer.parseInt(strI3.substring(strI3.indexOf(58) + 1));
                                            oVar = oVar;
                                            lVar = lVar;
                                            str8 = str14;
                                            arrayList11 = arrayList;
                                            linkedHashMap2 = linkedHashMap2;
                                            map2 = map2;
                                            gVar = gVar2;
                                            arrayList10 = arrayList2;
                                            i11 = i8;
                                            z9 = true;
                                        } else if (strI3.equals("#EXT-X-DISCONTINUITY")) {
                                            i14++;
                                        } else {
                                            if (strI3.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                if (jR == 0) {
                                                    jR = M.R(M.U(strI3.substring(strI3.indexOf(58) + 1))) - j18;
                                                }
                                            } else if (strI3.equals("#EXT-X-GAP")) {
                                                oVar = oVar;
                                                lVar = lVar;
                                                str8 = str14;
                                                arrayList11 = arrayList;
                                                linkedHashMap2 = linkedHashMap2;
                                                map2 = map2;
                                                gVar = gVar2;
                                                arrayList10 = arrayList2;
                                                i11 = i8;
                                                z11 = true;
                                            } else if (strI3.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                oVar = oVar;
                                                lVar = lVar;
                                                str8 = str14;
                                                arrayList11 = arrayList;
                                                linkedHashMap2 = linkedHashMap2;
                                                map2 = map2;
                                                gVar = gVar2;
                                                arrayList10 = arrayList2;
                                                i11 = i8;
                                                z8 = true;
                                            } else if (strI3.equals("#EXT-X-ENDLIST")) {
                                                oVar = oVar;
                                                lVar = lVar;
                                                str8 = str14;
                                                arrayList11 = arrayList;
                                                linkedHashMap2 = linkedHashMap2;
                                                map2 = map2;
                                                gVar = gVar2;
                                                arrayList10 = arrayList2;
                                                i11 = i8;
                                                z10 = true;
                                            } else if (strI3.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                long jH = h(strI3, f3976j0);
                                                Matcher matcher2 = f3977k0.matcher(strI3);
                                                if (matcher2.find()) {
                                                    String strGroup = matcher2.group(1);
                                                    strGroup.getClass();
                                                    i10 = Integer.parseInt(strGroup);
                                                } else {
                                                    i10 = -1;
                                                }
                                                arrayList9.add(new h(Uri.parse(Q3.b.u(str, j(strI3, pattern2, map))), jH, i10));
                                            } else if (strI3.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                if (gVar2 == null && "PART".equals(j(strI3, f3989w0, map))) {
                                                    String strJ6 = j(strI3, pattern2, map);
                                                    long jH2 = h(strI3, f3981o0);
                                                    long jH3 = h(strI3, f3982p0);
                                                    String hexString = strJ == null ? null : strI2 != null ? strI2 : Long.toHexString(j16);
                                                    if (c3131n2 == null && !treeMap2.isEmpty()) {
                                                        C3130m[] c3130mArr = (C3130m[]) treeMap2.values().toArray(new C3130m[0]);
                                                        C3131n c3131n3 = new C3131n(str14, true, c3130mArr);
                                                        if (c3131nB == null) {
                                                            c3131nB = b(str14, c3130mArr);
                                                        }
                                                        c3131n2 = c3131n3;
                                                    }
                                                    gVar = (jH2 == -1 || jH3 != -1) ? new g(strJ6, iVar, 0L, i14, j17, c3131n2, strJ, hexString, jH2 != -1 ? jH2 : 0L, jH3, false, false, true) : gVar2;
                                                    oVar = oVar;
                                                    lVar = lVar;
                                                    str8 = str14;
                                                    arrayList11 = arrayList;
                                                    arrayList10 = arrayList2;
                                                    i11 = i8;
                                                }
                                            } else if (strI3.startsWith("#EXT-X-PART")) {
                                                String hexString2 = strJ == null ? null : strI2 != null ? strI2 : Long.toHexString(j16);
                                                String strJ7 = j(strI3, pattern2, map);
                                                long j28 = (long) (Double.parseDouble(j(strI3, f3955V, Collections.emptyMap())) * 1000000.0d);
                                                boolean zF3 = f(strI3, f3926F0) | (z8 && arrayList.isEmpty());
                                                boolean zF4 = f(strI3, f3927G0);
                                                String strI7 = i(strI3, pattern, null, map);
                                                if (strI7 != null) {
                                                    String str16 = M.f28050a;
                                                    String[] strArrSplit3 = strI7.split("@", -1);
                                                    j8 = Long.parseLong(strArrSplit3[0]);
                                                    if (strArrSplit3.length > 1) {
                                                        j19 = Long.parseLong(strArrSplit3[1]);
                                                    }
                                                } else {
                                                    j8 = -1;
                                                }
                                                if (j8 == -1) {
                                                    j19 = 0;
                                                }
                                                if (c3131n2 == null && !treeMap2.isEmpty()) {
                                                    C3130m[] c3130mArr2 = (C3130m[]) treeMap2.values().toArray(new C3130m[0]);
                                                    C3131n c3131n4 = new C3131n(str14, true, c3130mArr2);
                                                    if (c3131nB == null) {
                                                        c3131nB = b(str14, c3130mArr2);
                                                    }
                                                    c3131n2 = c3131n4;
                                                }
                                                arrayList11 = arrayList;
                                                arrayList11.add(new g(strJ7, iVar, j28, i14, j17, c3131n2, strJ, hexString2, j19, j8, zF4, zF3, false));
                                                j17 += j28;
                                                if (j8 != -1) {
                                                    j19 += j8;
                                                }
                                                oVar = oVar;
                                                lVar = lVar;
                                                str8 = str14;
                                                gVar = gVar2;
                                                arrayList10 = arrayList2;
                                                i11 = i8;
                                            } else {
                                                if (strI3.startsWith("#EXT-X-DATERANGE") && i(strI3, f3936L0, str7, map).equals("com.apple.hls.interstitial")) {
                                                    String strJ8 = j(strI3, f3934K0, map);
                                                    String strI8 = i(strI3, f3948R0, null, map);
                                                    Uri uri = strI8 != null ? Uri.parse(strI8) : null;
                                                    String strI9 = i(strI3, f3950S0, null, map);
                                                    Uri uri2 = strI9 != null ? Uri.parse(strI9) : null;
                                                    String strI10 = i(strI3, f3938M0, null, map);
                                                    long jR2 = strI10 != null ? M.R(M.U(strI10)) : -9223372036854775807L;
                                                    String strI11 = i(strI3, f3942O0, null, map);
                                                    long jR3 = strI11 != null ? M.R(M.U(strI11)) : -9223372036854775807L;
                                                    ArrayList arrayList15 = new ArrayList();
                                                    String strI12 = i(strI3, f3940N0, null, map);
                                                    if (strI12 != null) {
                                                        String str17 = M.f28050a;
                                                        String[] strArrSplit4 = strI12.split(",", -1);
                                                        int length = strArrSplit4.length;
                                                        int i20 = 0;
                                                        while (i20 < length) {
                                                            int i21 = length;
                                                            String strTrim = strArrSplit4[i20].trim();
                                                            strTrim.getClass();
                                                            strTrim.hashCode();
                                                            byte b8 = -1;
                                                            switch (strTrim.hashCode()) {
                                                                case 79491:
                                                                    strArr = strArrSplit4;
                                                                    if (strTrim.equals("PRE")) {
                                                                        b8 = 0;
                                                                    }
                                                                    break;
                                                                case 2430593:
                                                                    strArr = strArrSplit4;
                                                                    if (strTrim.equals("ONCE")) {
                                                                        b8 = 1;
                                                                    }
                                                                    break;
                                                                case 2461856:
                                                                    strArr = strArrSplit4;
                                                                    if (strTrim.equals("POST")) {
                                                                        b8 = 2;
                                                                    }
                                                                    break;
                                                                default:
                                                                    strArr = strArrSplit4;
                                                                    break;
                                                            }
                                                            switch (b8) {
                                                                case 0:
                                                                case 1:
                                                                case 2:
                                                                    arrayList15.add(strTrim);
                                                                    break;
                                                            }
                                                            i20++;
                                                            length = i21;
                                                            strArrSplit4 = strArr;
                                                        }
                                                    }
                                                    double dG4 = g(strI3, f3957W, -1.0d);
                                                    long j29 = dG4 >= 0.0d ? (long) (dG4 * 1000000.0d) : -9223372036854775807L;
                                                    arrayList = arrayList;
                                                    treeMap = treeMap2;
                                                    double dG5 = g(strI3, f3944P0, -1.0d);
                                                    long j30 = dG5 >= 0.0d ? (long) (dG5 * 1000000.0d) : -9223372036854775807L;
                                                    boolean zF5 = f(strI3, f3946Q0);
                                                    arrayList4 = arrayList7;
                                                    double dG6 = g(strI3, f3952T0, Double.MIN_VALUE);
                                                    long j31 = dG6 != Double.MIN_VALUE ? (long) (dG6 * 1000000.0d) : -9223372036854775807L;
                                                    double dG7 = g(strI3, f3954U0, -1.0d);
                                                    long j32 = dG7 >= 0.0d ? (long) (dG7 * 1000000.0d) : -9223372036854775807L;
                                                    ArrayList arrayList16 = new ArrayList();
                                                    str3 = str14;
                                                    long j33 = j32;
                                                    String strI13 = i(strI3, f3956V0, null, map);
                                                    if (strI13 != null) {
                                                        String str18 = M.f28050a;
                                                        String[] strArrSplit5 = strI13.split(",", -1);
                                                        int length2 = strArrSplit5.length;
                                                        int i22 = 0;
                                                        while (i22 < length2) {
                                                            int i23 = length2;
                                                            String strTrim2 = strArrSplit5[i22].trim();
                                                            strTrim2.getClass();
                                                            String[] strArr2 = strArrSplit5;
                                                            if (strTrim2.equals("IN") || strTrim2.equals("OUT")) {
                                                                arrayList16.add(strTrim2);
                                                            }
                                                            i22++;
                                                            strArrSplit5 = strArr2;
                                                            length2 = i23;
                                                        }
                                                    }
                                                    ArrayList arrayList17 = new ArrayList();
                                                    String strI14 = i(strI3, f3958W0, null, map);
                                                    if (strI14 != null) {
                                                        String str19 = M.f28050a;
                                                        String[] strArrSplit6 = strI14.split(",", -1);
                                                        int length3 = strArrSplit6.length;
                                                        int i24 = 0;
                                                        while (i24 < length3) {
                                                            String[] strArr3 = strArrSplit6;
                                                            String strTrim3 = strArrSplit6[i24].trim();
                                                            strTrim3.getClass();
                                                            int i25 = length3;
                                                            if (strTrim3.equals("JUMP") || strTrim3.equals("SKIP")) {
                                                                arrayList17.add(strTrim3);
                                                            }
                                                            i24++;
                                                            length3 = i25;
                                                            strArrSplit6 = strArr3;
                                                        }
                                                    }
                                                    String strI15 = i(strI3, f3960X0, null, map);
                                                    Boolean boolValueOf = strI15 != null ? Boolean.valueOf(!strI15.equals("NO")) : null;
                                                    String strI16 = i(strI3, f3962Y0, null, map);
                                                    if (strI16 != null) {
                                                        str5 = "RANGE";
                                                        if (!strI16.equals("RANGE")) {
                                                            str5 = "POINT";
                                                            if (!strI16.equals("POINT")) {
                                                                str5 = null;
                                                            }
                                                        }
                                                    } else {
                                                        str5 = null;
                                                    }
                                                    String str20 = str5;
                                                    String strI17 = i(strI3, f3964Z0, null, map);
                                                    if (strI17 != null) {
                                                        str6 = "PRIMARY";
                                                        if (!strI17.equals("PRIMARY")) {
                                                            str6 = "HIGHLIGHT";
                                                            if (!strI17.equals("HIGHLIGHT")) {
                                                                str6 = null;
                                                            }
                                                        }
                                                    } else {
                                                        str6 = null;
                                                    }
                                                    ArrayList arrayList18 = new ArrayList();
                                                    String str21 = str6;
                                                    String strSubstring = strI3.substring(17);
                                                    Matcher matcher3 = f3968b1.matcher(strSubstring);
                                                    while (matcher3.find()) {
                                                        Boolean bool = boolValueOf;
                                                        String strGroup2 = matcher3.group();
                                                        strGroup2.getClass();
                                                        strGroup2.hashCode();
                                                        byte b9 = -1;
                                                        switch (strGroup2.hashCode()) {
                                                            case -2136701954:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-SNAP=")) {
                                                                    b9 = 0;
                                                                }
                                                                break;
                                                            case -1843050726:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-CONTENT-MAY-VARY=")) {
                                                                    b9 = 1;
                                                                }
                                                                break;
                                                            case -148960310:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-PLAYOUT-LIMIT=")) {
                                                                    b9 = 2;
                                                                }
                                                                break;
                                                            case -36345757:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-TIMELINE-STYLE=")) {
                                                                    b9 = 3;
                                                                }
                                                                break;
                                                            case 397239341:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-ASSET-LIST=")) {
                                                                    b9 = 4;
                                                                }
                                                                break;
                                                            case 850193465:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-TIMELINE-OCCUPIES=")) {
                                                                    b9 = 5;
                                                                }
                                                                break;
                                                            case 1472528844:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-RESTRICT=")) {
                                                                    b9 = 6;
                                                                }
                                                                break;
                                                            case 1748487807:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-RESUME-OFFSET=")) {
                                                                    b9 = 7;
                                                                }
                                                                break;
                                                            case 1814205923:
                                                                matcher = matcher3;
                                                                if (strGroup2.equals("X-ASSET-URI=")) {
                                                                    b9 = 8;
                                                                }
                                                                break;
                                                            default:
                                                                matcher = matcher3;
                                                                break;
                                                        }
                                                        switch (b9) {
                                                            case 0:
                                                            case 1:
                                                            case 2:
                                                            case 3:
                                                            case 4:
                                                            case 5:
                                                            case 6:
                                                            case 7:
                                                            case 8:
                                                                j30 = j30;
                                                                break;
                                                            default:
                                                                String strSubstring2 = strGroup2.substring(0, strGroup2.length() - 1);
                                                                String strA = U2.A(strSubstring2, "=");
                                                                int length4 = strA.length() + strSubstring.indexOf(strA);
                                                                String strSubstring3 = strSubstring.substring(length4, (strSubstring.length() == length4 + 1 ? 1 : 2) + length4);
                                                                if (strSubstring3.startsWith("\"")) {
                                                                    dVar = new d(strSubstring2, j(strSubstring, Pattern.compile(strSubstring2 + "=\"((?:.|\f)+?)\""), map), 0);
                                                                } else if (strSubstring3.equals("0x") || strSubstring3.equals("0X")) {
                                                                    dVar = new d(strSubstring2, j(strSubstring, Pattern.compile(strSubstring2 + "=(0[xX][A-F0-9]+)"), map), 1);
                                                                } else {
                                                                    dVar = new d(strSubstring2, Double.parseDouble(j(strSubstring, Pattern.compile(strSubstring2 + "=([\\d\\.]+)\\b"), Collections.emptyMap())));
                                                                }
                                                                arrayList18.add(dVar);
                                                                break;
                                                        }
                                                        boolValueOf = bool;
                                                        arrayList16 = arrayList16;
                                                        matcher3 = matcher;
                                                        arrayList17 = arrayList17;
                                                        j30 = j30;
                                                    }
                                                    Boolean bool2 = boolValueOf;
                                                    ArrayList arrayList19 = arrayList17;
                                                    long j34 = j30;
                                                    ArrayList arrayList20 = arrayList16;
                                                    linkedHashMap = linkedHashMap2;
                                                    e eVar = linkedHashMap.containsKey(strJ8) ? (e) linkedHashMap.get(strJ8) : new e(strJ8);
                                                    if (uri == null) {
                                                        eVar.getClass();
                                                    } else {
                                                        Uri uri3 = eVar.f3823c;
                                                        if (uri3 != null) {
                                                            H1.c("Can't change assetUri from " + eVar.f3823c + " to " + uri, uri3.equals(uri));
                                                        }
                                                        eVar.f3823c = uri;
                                                    }
                                                    if (uri2 != null) {
                                                        Uri uri4 = eVar.f3824d;
                                                        if (uri4 != null) {
                                                            H1.c("Can't change assetListUri from " + eVar.f3824d + " to " + uri2, uri4.equals(uri2));
                                                        }
                                                        eVar.f3824d = uri2;
                                                    }
                                                    if (jR2 == -9223372036854775807L) {
                                                        j10 = -9223372036854775807L;
                                                    } else {
                                                        long j35 = eVar.f3825e;
                                                        if (j35 != -9223372036854775807L) {
                                                            H1.c("Can't change startDateUnixUs from " + eVar.f3825e + " to " + jR2, j35 == jR2);
                                                        }
                                                        eVar.f3825e = jR2;
                                                        j10 = -9223372036854775807L;
                                                    }
                                                    if (jR3 != j10) {
                                                        long j36 = eVar.f3826f;
                                                        if (j36 != j10) {
                                                            H1.c("Can't change endDateUnixUs from " + eVar.f3826f + " to " + jR3, j36 == jR3);
                                                        }
                                                        eVar.f3826f = jR3;
                                                        j10 = -9223372036854775807L;
                                                    }
                                                    if (j29 != j10) {
                                                        long j37 = eVar.f3827g;
                                                        if (j37 != j10) {
                                                            H1.c("Can't change durationUs from " + eVar.f3827g + " to " + j29, j37 == j29);
                                                        }
                                                        eVar.f3827g = j29;
                                                        j10 = -9223372036854775807L;
                                                    }
                                                    if (j34 != j10) {
                                                        long j38 = eVar.f3828h;
                                                        if (j38 != j10) {
                                                            boolean z13 = j38 == j34;
                                                            StringBuilder sb = new StringBuilder("Can't change plannedDurationUs from ");
                                                            sb.append(eVar.f3828h);
                                                            sb.append(" to ");
                                                            j13 = j34;
                                                            sb.append(j13);
                                                            H1.c(sb.toString(), z13);
                                                        } else {
                                                            j13 = j34;
                                                        }
                                                        eVar.f3828h = j13;
                                                    }
                                                    if (!arrayList15.isEmpty()) {
                                                        if (eVar.f3829i.isEmpty()) {
                                                            arrayList6 = arrayList15;
                                                        } else {
                                                            arrayList6 = arrayList15;
                                                            boolean zEquals = eVar.f3829i.equals(arrayList6);
                                                            StringBuilder sb2 = new StringBuilder("Can't change cue from ");
                                                            List list = eVar.f3829i;
                                                            StringBuilder sb3 = new StringBuilder();
                                                            Iterator it = list.iterator();
                                                            if (it.hasNext()) {
                                                                while (true) {
                                                                    sb3.append((CharSequence) it.next());
                                                                    if (it.hasNext()) {
                                                                        sb3.append((CharSequence) ", ");
                                                                    }
                                                                }
                                                            }
                                                            sb2.append(sb3.toString());
                                                            sb2.append(" to ");
                                                            StringBuilder sb4 = new StringBuilder();
                                                            Iterator it2 = arrayList6.iterator();
                                                            if (it2.hasNext()) {
                                                                while (true) {
                                                                    sb4.append((CharSequence) it2.next());
                                                                    if (it2.hasNext()) {
                                                                        sb4.append((CharSequence) ", ");
                                                                    }
                                                                }
                                                            }
                                                            sb2.append(sb4.toString());
                                                            H1.c(sb2.toString(), zEquals);
                                                        }
                                                        eVar.f3829i = arrayList6;
                                                    }
                                                    if (zF5) {
                                                        eVar.f3830j = true;
                                                    }
                                                    long j39 = -9223372036854775807L;
                                                    if (j31 != -9223372036854775807L) {
                                                        long j40 = eVar.f3831k;
                                                        if (j40 != -9223372036854775807L) {
                                                            boolean z14 = j40 == j31;
                                                            StringBuilder sb5 = new StringBuilder("Can't change resumeOffsetUs from ");
                                                            sb5.append(eVar.f3831k);
                                                            sb5.append(" to ");
                                                            j12 = j31;
                                                            sb5.append(j12);
                                                            H1.c(sb5.toString(), z14);
                                                        } else {
                                                            j12 = j31;
                                                        }
                                                        eVar.f3831k = j12;
                                                        j39 = -9223372036854775807L;
                                                    }
                                                    if (j33 != j39) {
                                                        long j41 = eVar.f3832l;
                                                        if (j41 != j39) {
                                                            boolean z15 = j41 == j33;
                                                            StringBuilder sb6 = new StringBuilder("Can't change playoutLimitUs from ");
                                                            sb6.append(eVar.f3832l);
                                                            sb6.append(" to ");
                                                            j11 = j33;
                                                            sb6.append(j11);
                                                            H1.c(sb6.toString(), z15);
                                                        } else {
                                                            j11 = j33;
                                                        }
                                                        eVar.f3832l = j11;
                                                    }
                                                    if (!arrayList20.isEmpty()) {
                                                        if (eVar.f3833m.isEmpty()) {
                                                            arrayList5 = arrayList20;
                                                        } else {
                                                            arrayList5 = arrayList20;
                                                            boolean zEquals2 = eVar.f3833m.equals(arrayList5);
                                                            StringBuilder sb7 = new StringBuilder("Can't change snapTypes from ");
                                                            List list2 = eVar.f3833m;
                                                            StringBuilder sb8 = new StringBuilder();
                                                            Iterator it3 = list2.iterator();
                                                            if (it3.hasNext()) {
                                                                while (true) {
                                                                    sb8.append((CharSequence) it3.next());
                                                                    if (it3.hasNext()) {
                                                                        sb8.append((CharSequence) ", ");
                                                                    }
                                                                }
                                                            }
                                                            sb7.append(sb8.toString());
                                                            sb7.append(" to ");
                                                            StringBuilder sb9 = new StringBuilder();
                                                            Iterator it4 = arrayList5.iterator();
                                                            if (it4.hasNext()) {
                                                                while (true) {
                                                                    sb9.append((CharSequence) it4.next());
                                                                    if (it4.hasNext()) {
                                                                        sb9.append((CharSequence) ", ");
                                                                    }
                                                                }
                                                            }
                                                            sb7.append(sb9.toString());
                                                            H1.c(sb7.toString(), zEquals2);
                                                        }
                                                        eVar.f3833m = arrayList5;
                                                    }
                                                    eVar.c(arrayList19);
                                                    eVar.b(arrayList18);
                                                    if (bool2 != null) {
                                                        Boolean bool3 = eVar.f3835o;
                                                        if (bool3 != null) {
                                                            H1.c("Can't change contentMayVary from " + eVar.f3835o + " to " + bool2, bool3.equals(bool2));
                                                        }
                                                        eVar.f3835o = bool2;
                                                    }
                                                    if (str20 != null) {
                                                        String str22 = eVar.f3836p;
                                                        if (str22 != null) {
                                                            H1.c("Can't change timelineOccupies from " + eVar.f3836p + " to " + str20, str22.equals(str20));
                                                        }
                                                        eVar.f3836p = str20;
                                                    }
                                                    eVar.d(str21);
                                                    linkedHashMap.put(strJ8, eVar);
                                                } else {
                                                    map = map;
                                                    arrayList9 = arrayList9;
                                                    arrayList = arrayList;
                                                    treeMap = treeMap2;
                                                    str3 = str14;
                                                    str7 = str7;
                                                    arrayList4 = arrayList7;
                                                    linkedHashMap = linkedHashMap2;
                                                    if (!strI3.startsWith(MqttTopic.MULTI_LEVEL_WILDCARD)) {
                                                        String hexString3 = strJ == null ? null : strI2 != null ? strI2 : Long.toHexString(j16);
                                                        long j42 = j16 + 1;
                                                        String strK = k(strI3, map);
                                                        i iVar3 = (i) map2.get(strK);
                                                        if (j20 == -1) {
                                                            j9 = 0;
                                                        } else {
                                                            if (z12 && iVar == null && iVar3 == null) {
                                                                iVar3 = new i(0L, j15, strK, null, null);
                                                                map2.put(strK, iVar3);
                                                            }
                                                            j9 = j15;
                                                        }
                                                        if (c3131n2 != null || treeMap.isEmpty()) {
                                                            str4 = str3;
                                                            c3131n = c3131n2;
                                                        } else {
                                                            C3130m[] c3130mArr3 = (C3130m[]) treeMap.values().toArray(new C3130m[0]);
                                                            str4 = str3;
                                                            c3131n = new C3131n(str4, true, c3130mArr3);
                                                            if (c3131nB == null) {
                                                                c3131nB = b(str4, c3130mArr3);
                                                            }
                                                        }
                                                        arrayList4.add(new i(strK, iVar != null ? iVar : iVar3, strI, jLongValue, i14, j18, c3131n, strJ, hexString3, j9, j20, z11, arrayList));
                                                        j17 = j18 + jLongValue;
                                                        ArrayList arrayList21 = new ArrayList();
                                                        if (j20 != -1) {
                                                            j9 += j20;
                                                        }
                                                        j15 = j9;
                                                        linkedHashMap2 = linkedHashMap;
                                                        j16 = j42;
                                                        arrayList11 = arrayList21;
                                                        map2 = map2;
                                                        c3131n2 = c3131n;
                                                        str8 = str4;
                                                        jLongValue = 0;
                                                        j20 = -1;
                                                        j18 = j17;
                                                        str7 = str7;
                                                        strI = str7;
                                                        arrayList9 = arrayList9;
                                                        treeMap2 = treeMap;
                                                        gVar = gVar2;
                                                        arrayList10 = arrayList2;
                                                        i11 = i8;
                                                        z11 = false;
                                                        arrayList7 = arrayList4;
                                                        map = map;
                                                        oVar = oVar;
                                                        lVar = lVar;
                                                    }
                                                }
                                                str2 = str3;
                                                arrayList3 = arrayList4;
                                            }
                                            map = map;
                                            arrayList9 = arrayList9;
                                            treeMap = treeMap2;
                                            str7 = str7;
                                            arrayList3 = arrayList7;
                                            linkedHashMap = linkedHashMap2;
                                            str2 = str14;
                                            map = map;
                                            linkedHashMap2 = linkedHashMap;
                                            map2 = map2;
                                            str8 = str2;
                                            arrayList11 = arrayList;
                                            str7 = str7;
                                            arrayList9 = arrayList9;
                                            treeMap2 = treeMap;
                                            gVar = gVar2;
                                            arrayList10 = arrayList2;
                                            i11 = i8;
                                            lVar = lVar;
                                            arrayList7 = arrayList3;
                                            oVar = oVar;
                                        }
                                        str8 = str14;
                                    }
                                    arrayList11 = arrayList;
                                    gVar = gVar2;
                                    arrayList10 = arrayList2;
                                    i11 = i8;
                                }
                                map = map;
                                linkedHashMap2 = linkedHashMap;
                                map2 = map2;
                                str8 = str2;
                                arrayList11 = arrayList;
                                str7 = str7;
                                arrayList9 = arrayList9;
                                treeMap2 = treeMap;
                                gVar = gVar2;
                                arrayList10 = arrayList2;
                                i11 = i8;
                                lVar = lVar;
                                arrayList7 = arrayList3;
                                oVar = oVar;
                            }
                            arrayList10 = arrayList12;
                            arrayList11 = arrayList;
                            linkedHashMap2 = linkedHashMap2;
                            map2 = map2;
                            gVar = gVar2;
                        }
                    }
                }
                arrayList10 = arrayList12;
                linkedHashMap2 = linkedHashMap3;
                arrayList11 = arrayList;
            }
        }
        int i26 = i11;
        g gVar4 = gVar;
        ArrayList arrayList22 = arrayList9;
        LinkedHashMap linkedHashMap4 = linkedHashMap2;
        ArrayList arrayList23 = arrayList10;
        ArrayList arrayList24 = arrayList11;
        ArrayList arrayList25 = arrayList7;
        HashMap map3 = new HashMap();
        int i27 = 0;
        while (i27 < arrayList22.size()) {
            ArrayList arrayList26 = arrayList22;
            h hVar = (h) arrayList26.get(i27);
            long size = hVar.f3858b;
            if (size == -1) {
                size = (j14 + ((long) arrayList25.size())) - (arrayList24.isEmpty() ? 1L : 0L);
            }
            int size2 = hVar.f3859c;
            if (size2 == -1 && j23 != -9223372036854775807L) {
                size2 = (arrayList24.isEmpty() ? ((i) p190y4.k.G(arrayList25)).f3861S : arrayList24).size() - 1;
            }
            Uri uri5 = hVar.f3857a;
            map3.put(uri5, new h(uri5, size, size2));
            i27++;
            arrayList22 = arrayList26;
        }
        if (gVar4 != null) {
            arrayList24.add(gVar4);
        }
        ArrayList arrayList27 = new ArrayList();
        Iterator it5 = linkedHashMap4.values().iterator();
        while (it5.hasNext()) {
            f fVarA = ((e) it5.next()).a();
            if (fVarA != null) {
                arrayList27.add(fVarA);
            }
        }
        return new l(i26, str, arrayList23, j21, zF, jR, z9, i12, j14, i13, j22, j23, z8, z10, jR != 0, c3131nB, arrayList25, arrayList24, kVar2, map3, arrayList27);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0234  */
    /* JADX WARN: Code duplicated, block: B:102:0x0239  */
    /* JADX WARN: Code duplicated, block: B:105:0x0259  */
    /* JADX WARN: Code duplicated, block: B:106:0x0262  */
    /* JADX WARN: Code duplicated, block: B:108:0x0268  */
    /* JADX WARN: Code duplicated, block: B:111:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:161:0x045a  */
    /* JADX WARN: Code duplicated, block: B:254:0x02eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x01ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:89:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:91:0x0202  */
    /* JADX WARN: Code duplicated, block: B:95:0x0210  */
    /* JADX WARN: Code duplicated, block: B:98:0x0229  */
    /* JADX WARN: Failed to find 'out' block for switch in B:178:0x0487. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static o e(p096m2.u uVar, String str) throws IOException {
        ?? r7;
        int i8;
        ArrayList arrayList;
        n nVar;
        String strE;
        int i9;
        String str2;
        C3136t c3136t;
        int i10;
        int i11;
        n nVar2;
        String strE2;
        n nVar3;
        int i12;
        String strL;
        String str3;
        String strU;
        String strI;
        int i13;
        int i14;
        String strI2;
        float f8;
        Uri uriW;
        HashMap map;
        ArrayList arrayList2;
        String[] strArrD0;
        StringBuilder sb;
        int length;
        int i15;
        String string;
        String str4;
        String str5 = str;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        boolean z7 = false;
        boolean zContains = false;
        while (true) {
            boolean zE = uVar.E();
            Pattern pattern = f3986t0;
            Pattern pattern2 = f3991y0;
            String str6 = ",";
            if (!zE) {
                HashMap map4 = map2;
                ArrayList arrayList11 = arrayList4;
                ArrayList arrayList12 = arrayList5;
                ArrayList arrayList13 = arrayList6;
                ArrayList arrayList14 = arrayList7;
                ArrayList arrayList15 = arrayList8;
                ArrayList arrayList16 = arrayList9;
                ArrayList arrayList17 = arrayList10;
                ArrayList arrayList18 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i16 = 0;
                while (i16 < arrayList3.size()) {
                    n nVar4 = (n) arrayList3.get(i16);
                    if (hashSet.add(nVar4.f3901a)) {
                        C3136t c3136t2 = nVar4.f3902b;
                        H1.i(c3136t2.f27038l == null);
                        ArrayList arrayList19 = (ArrayList) map4.get(nVar4.f3901a);
                        arrayList19.getClass();
                        N n7 = new N(new H0.v(null, null, arrayList19));
                        C3135s c3135sA = c3136t2.a();
                        c3135sA.f26993k = n7;
                        arrayList18.add(new n(nVar4.f3901a, new C3136t(c3135sA), nVar4.f3903c, nVar4.f3904d, nVar4.f3905e, nVar4.f3906f));
                    }
                    i16++;
                    hashSet = hashSet;
                    map4 = map4;
                }
                ArrayList arrayList20 = null;
                C3136t c3136t3 = null;
                int i17 = 0;
                while (i17 < arrayList15.size()) {
                    ArrayList arrayList21 = arrayList15;
                    String str7 = (String) arrayList21.get(i17);
                    String strJ = j(str7, f3992z0, map3);
                    String strJ2 = j(str7, pattern2, map3);
                    C3135s c3135s = new C3135s();
                    Pattern pattern3 = pattern2;
                    c3135s.f26983a = U2.l(strJ, ":", strJ2);
                    c3135s.f26984b = strJ2;
                    c3135s.f26995m = O.p("application/x-mpegURL");
                    boolean zF = f(str7, f3924D0);
                    arrayList15 = arrayList21;
                    if (f(str7, f3925E0)) {
                        r7 = zF;
                        r7 = (zF ? 1 : 0) | 2;
                    }
                    r7 = zF;
                    int i18 = r7;
                    if (f(str7, f3923C0)) {
                        i18 = (r7 == true ? 1 : 0) | 4;
                    }
                    c3135s.f26987e = i18;
                    String strI3 = i(str7, f3921A0, null, map3);
                    if (TextUtils.isEmpty(strI3)) {
                        str6 = str6;
                        i8 = 0;
                    } else {
                        String str8 = M.f28050a;
                        String[] strArrSplit = strI3.split(str6, -1);
                        int i19 = M.l(strArrSplit, "public.accessibility.describes-video") ? IMediaList.Event.ItemAdded : 0;
                        if (M.l(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
                            i19 |= 4096;
                        }
                        if (M.l(strArrSplit, "public.accessibility.describes-music-and-sound")) {
                            i19 |= 1024;
                        }
                        i8 = M.l(strArrSplit, "public.easy-to-read") ? i19 | 8192 : i19;
                    }
                    c3135s.f26988f = i8;
                    c3135s.f26986d = i(str7, f3990x0, null, map3);
                    String strI4 = i(str7, pattern, null, map3);
                    Uri uriW2 = strI4 == null ? null : Q3.b.w(str5, strI4);
                    Pattern pattern4 = pattern;
                    N n8 = new N(new H0.v(strJ, strJ2, Collections.emptyList()));
                    String strJ3 = j(str7, f3988v0, map3);
                    strJ3.hashCode();
                    switch (strJ3) {
                        case "SUBTITLES":
                            c3136t3 = c3136t3;
                            arrayList12 = arrayList12;
                            arrayList = arrayList11;
                            int i20 = 0;
                            while (true) {
                                if (i20 < arrayList3.size()) {
                                    n nVar5 = (n) arrayList3.get(i20);
                                    if (strJ.equals(nVar5.f3905e)) {
                                        nVar = nVar5;
                                    } else {
                                        i20++;
                                    }
                                } else {
                                    nVar = null;
                                }
                            }
                            if (nVar != null) {
                                String strU2 = M.u(3, nVar.f3902b.f27037k);
                                c3135s.f26992j = strU2;
                                strE = O.e(strU2);
                            } else {
                                strE = null;
                            }
                            if (strE == null) {
                                strE = "text/vtt";
                            }
                            c3135s.f26996n = O.p(strE);
                            c3135s.f26993k = n8;
                            if (uriW2 != null) {
                                arrayList13 = arrayList13;
                                arrayList13.add(new m(uriW2, new C3136t(c3135s), strJ2));
                            } else {
                                arrayList13 = arrayList13;
                                x.f("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            c3136t = c3136t3;
                            i10 = 1;
                            break;
                        case "CLOSED-CAPTIONS":
                            C3136t c3136t4 = c3136t3;
                            arrayList12 = arrayList12;
                            arrayList = arrayList11;
                            String strJ4 = j(str7, f3922B0, map3);
                            if (strJ4.startsWith("CC")) {
                                i9 = Integer.parseInt(strJ4.substring(2));
                                str2 = "application/cea-608";
                            } else {
                                i9 = Integer.parseInt(strJ4.substring(7));
                                str2 = "application/cea-708";
                            }
                            if (arrayList20 == null) {
                                arrayList20 = new ArrayList();
                            }
                            c3135s.f26996n = O.p(str2);
                            c3135s.f26978K = i9;
                            arrayList20.add(new C3136t(c3135s));
                            c3136t = c3136t4;
                            arrayList13 = arrayList13;
                            i10 = 1;
                            break;
                        case "AUDIO":
                            arrayList = arrayList11;
                            int i21 = 0;
                            while (true) {
                                if (i21 < arrayList3.size()) {
                                    n nVar6 = (n) arrayList3.get(i21);
                                    c3136t3 = c3136t3;
                                    if (strJ.equals(nVar6.f3904d)) {
                                        nVar2 = nVar6;
                                        i11 = 1;
                                    } else {
                                        i21++;
                                        c3136t3 = c3136t3;
                                    }
                                } else {
                                    c3136t3 = c3136t3;
                                    i11 = 1;
                                    nVar2 = null;
                                }
                            }
                            if (nVar2 != null) {
                                String strU3 = M.u(i11, nVar2.f3902b.f27037k);
                                c3135s.f26992j = strU3;
                                strE2 = O.e(strU3);
                            } else {
                                strE2 = null;
                            }
                            String strI5 = i(str7, f3941O, null, map3);
                            if (strI5 != null) {
                                String str9 = M.f28050a;
                                c3135s.f26973F = Integer.parseInt(strI5.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, 2)[0]);
                                if ("audio/eac3".equals(strE2) && strI5.endsWith("/JOC")) {
                                    c3135s.f26992j = "ec+3";
                                    strE2 = "audio/eac3-joc";
                                }
                            }
                            c3135s.f26996n = O.p(strE2);
                            if (uriW2 == null) {
                                arrayList12 = arrayList12;
                                if (nVar2 != null) {
                                    c3136t = new C3136t(c3135s);
                                    arrayList13 = arrayList13;
                                    i10 = 1;
                                }
                                break;
                            } else {
                                c3135s.f26993k = n8;
                                arrayList12 = arrayList12;
                                arrayList12.add(new m(uriW2, new C3136t(c3135s), strJ2));
                            }
                            arrayList13 = arrayList13;
                            c3136t = c3136t3;
                            i10 = 1;
                            break;
                        case "VIDEO":
                            int i22 = 0;
                            while (true) {
                                if (i22 < arrayList3.size()) {
                                    nVar3 = (n) arrayList3.get(i22);
                                    if (!strJ.equals(nVar3.f3903c)) {
                                        i22++;
                                    }
                                } else {
                                    nVar3 = null;
                                }
                            }
                            if (nVar3 != null) {
                                C3136t c3136t5 = nVar3.f3902b;
                                String strU4 = M.u(2, c3136t5.f27037k);
                                c3135s.f26992j = strU4;
                                c3135s.f26996n = O.p(O.e(strU4));
                                c3135s.f27003u = c3136t5.f27048v;
                                c3135s.f27004v = c3136t5.f27049w;
                                c3135s.f27007y = c3136t5.f27052z;
                            }
                            if (uriW2 != null) {
                                c3135s.f26993k = n8;
                                arrayList = arrayList11;
                                arrayList.add(new m(uriW2, new C3136t(c3135s), strJ2));
                            }
                            c3136t = c3136t3;
                            i10 = 1;
                        default:
                            arrayList = arrayList11;
                            c3136t = c3136t3;
                            i10 = 1;
                            break;
                    }
                    i17 += i10;
                    c3136t3 = c3136t;
                    arrayList12 = arrayList12;
                    arrayList13 = arrayList13;
                    arrayList11 = arrayList;
                    pattern2 = pattern3;
                    str6 = str6;
                    pattern = pattern4;
                    str5 = str;
                }
                return new o(str, arrayList17, arrayList18, arrayList11, arrayList12, arrayList13, arrayList14, c3136t3, zContains ? Collections.emptyList() : arrayList20, z7, map3, arrayList16);
            }
            String strI6 = uVar.I();
            ArrayList arrayList22 = arrayList7;
            if (strI6.startsWith("#EXT")) {
                arrayList10.add(strI6);
            }
            boolean zStartsWith = strI6.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            ArrayList arrayList23 = arrayList10;
            if (strI6.startsWith("#EXT-X-DEFINE")) {
                map3.put(j(strI6, pattern2, map3), j(strI6, f3930I0, map3));
            } else {
                if (strI6.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                    map = map2;
                    arrayList6 = arrayList6;
                    z7 = true;
                } else if (strI6.startsWith("#EXT-X-MEDIA")) {
                    arrayList8.add(strI6);
                } else if (strI6.startsWith("#EXT-X-SESSION-KEY")) {
                    C3130m c3130mC = c(strI6, i(strI6, f3984r0, "identity", map3), map3);
                    if (c3130mC != null) {
                        String strJ5 = j(strI6, f3983q0, map3);
                        arrayList9.add(new C3131n(("SAMPLE-AES-CENC".equals(strJ5) || "SAMPLE-AES-CTR".equals(strJ5)) ? "cenc" : "cbcs", true, c3130mC));
                    }
                } else if (strI6.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                    zContains |= strI6.contains("CLOSED-CAPTIONS=NONE");
                    int i23 = zStartsWith ? Http2.INITIAL_MAX_FRAME_SIZE : 0;
                    int i24 = Integer.parseInt(j(strI6, f3939N, Collections.emptyMap()));
                    Matcher matcher = f3929I.matcher(strI6);
                    if (matcher.find()) {
                        String strGroup = matcher.group(1);
                        strGroup.getClass();
                        i12 = Integer.parseInt(strGroup);
                    } else {
                        i12 = -1;
                    }
                    String strI7 = i(strI6, f3943P, null, map3);
                    String strI8 = i(strI6, f3945Q, null, map3);
                    String strI9 = i(strI6, f3947R, null, map3);
                    if (strI9 != null) {
                        String str10 = M.f28050a;
                        String[] strArrSplit2 = strI9.split(",", 2)[0].split(MqttTopic.TOPIC_LEVEL_SEPARATOR, -1);
                        String str11 = strArrSplit2[0];
                        if (strArrSplit2.length > 1) {
                            str3 = strArrSplit2[1];
                            map2 = map2;
                            strL = str11;
                        } else {
                            strL = str11;
                        }
                        strU = M.u(2, strI8);
                        if (O.l(strU, strL) && (strL == null || (strI7 != null && str3 != null && ((!strI7.equals("PQ") || str3.equals("db1p")) && ((!strI7.equals("SDR") || str3.equals("db2g")) && (!strI7.equals("HLG") || str3.startsWith("db4"))))))) {
                            if (strL == null) {
                                strL = strU;
                            }
                            strArrD0 = M.d0(strI8);
                            if (strArrD0.length == 0) {
                                string = null;
                            } else {
                                sb = new StringBuilder();
                                length = strArrD0.length;
                                i15 = 0;
                                while (i15 < length) {
                                    str4 = strArrD0[i15];
                                    String[] strArr = strArrD0;
                                    int i25 = length;
                                    if (2 == O.i(O.e(str4))) {
                                        if (sb.length() > 0) {
                                            sb.append(",");
                                        }
                                        sb.append(str4);
                                    }
                                    i15++;
                                    length = i25;
                                    strArrD0 = strArr;
                                }
                                if (sb.length() > 0) {
                                    string = sb.toString();
                                } else {
                                    string = null;
                                }
                            }
                            if (string != null) {
                                strL = U2.l(strL, ",", string);
                            }
                            strI8 = strL;
                        }
                        strI = i(strI6, f3949S, null, map3);
                        if (strI != null) {
                            String[] strArrSplit3 = strI.split("x", -1);
                            i14 = Integer.parseInt(strArrSplit3[0]);
                            i13 = Integer.parseInt(strArrSplit3[1]);
                            if (i14 > 0 || i13 <= 0) {
                                i13 = -1;
                                i14 = -1;
                            }
                        } else {
                            i13 = -1;
                            i14 = -1;
                        }
                        strI2 = i(strI6, f3951T, null, map3);
                        if (strI2 != null) {
                            f8 = Float.parseFloat(strI2);
                        } else {
                            f8 = -1.0f;
                        }
                        String strI10 = i(strI6, f3931J, null, map3);
                        String strI11 = i(strI6, f3933K, null, map3);
                        String strI12 = i(strI6, f3935L, null, map3);
                        String strI13 = i(strI6, f3937M, null, map3);
                        if (zStartsWith) {
                            uriW = Q3.b.w(str5, j(strI6, pattern, map3));
                        } else {
                            if (uVar.E()) {
                                throw P.b("#EXT-X-STREAM-INF must be followed by another line", null);
                            }
                            uriW = Q3.b.w(str5, k(uVar.I(), map3));
                        }
                        C3135s c3135s2 = new C3135s();
                        c3135s2.f26983a = Integer.toString(arrayList3.size());
                        c3135s2.f26995m = O.p("application/x-mpegURL");
                        c3135s2.f26992j = strI8;
                        c3135s2.f26990h = i12;
                        c3135s2.f26991i = i24;
                        c3135s2.f27003u = i14;
                        c3135s2.f27004v = i13;
                        c3135s2.f27007y = f8;
                        c3135s2.f26988f = i23;
                        arrayList3.add(new n(uriW, new C3136t(c3135s2), strI10, strI11, strI12, strI13));
                        map = map2;
                        arrayList2 = (ArrayList) map.get(uriW);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            map.put(uriW, arrayList2);
                        }
                        arrayList2.add(new H0.u(i12, i24, strI10, strI11, strI12, strI13));
                    } else {
                        strL = null;
                    }
                    str3 = null;
                    strU = M.u(2, strI8);
                    if (O.l(strU, strL)) {
                        if (strL == null) {
                            strL = strU;
                        }
                        strArrD0 = M.d0(strI8);
                        if (strArrD0.length == 0) {
                            string = null;
                        } else {
                            sb = new StringBuilder();
                            length = strArrD0.length;
                            i15 = 0;
                            while (i15 < length) {
                                str4 = strArrD0[i15];
                                String[] strArr2 = strArrD0;
                                int i26 = length;
                                if (2 == O.i(O.e(str4))) {
                                    if (sb.length() > 0) {
                                        sb.append(",");
                                    }
                                    sb.append(str4);
                                }
                                i15++;
                                length = i26;
                                strArrD0 = strArr2;
                            }
                            if (sb.length() > 0) {
                                string = sb.toString();
                            } else {
                                string = null;
                            }
                        }
                        if (string != null) {
                            strL = U2.l(strL, ",", string);
                        }
                        strI8 = strL;
                    }
                    strI = i(strI6, f3949S, null, map3);
                    if (strI != null) {
                        String[] strArrSplit4 = strI.split("x", -1);
                        i14 = Integer.parseInt(strArrSplit4[0]);
                        i13 = Integer.parseInt(strArrSplit4[1]);
                        if (i14 > 0) {
                            i13 = -1;
                            i14 = -1;
                        } else {
                            i13 = -1;
                            i14 = -1;
                        }
                    } else {
                        i13 = -1;
                        i14 = -1;
                    }
                    strI2 = i(strI6, f3951T, null, map3);
                    if (strI2 != null) {
                        f8 = Float.parseFloat(strI2);
                    } else {
                        f8 = -1.0f;
                    }
                    String strI14 = i(strI6, f3931J, null, map3);
                    String strI15 = i(strI6, f3933K, null, map3);
                    String strI16 = i(strI6, f3935L, null, map3);
                    String strI17 = i(strI6, f3937M, null, map3);
                    if (zStartsWith) {
                        uriW = Q3.b.w(str5, j(strI6, pattern, map3));
                    } else {
                        if (uVar.E()) {
                            throw P.b("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        uriW = Q3.b.w(str5, k(uVar.I(), map3));
                    }
                    C3135s c3135s3 = new C3135s();
                    c3135s3.f26983a = Integer.toString(arrayList3.size());
                    c3135s3.f26995m = O.p("application/x-mpegURL");
                    c3135s3.f26992j = strI8;
                    c3135s3.f26990h = i12;
                    c3135s3.f26991i = i24;
                    c3135s3.f27003u = i14;
                    c3135s3.f27004v = i13;
                    c3135s3.f27007y = f8;
                    c3135s3.f26988f = i23;
                    arrayList3.add(new n(uriW, new C3136t(c3135s3), strI14, strI15, strI16, strI17));
                    map = map2;
                    arrayList2 = (ArrayList) map.get(uriW);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(uriW, arrayList2);
                    }
                    arrayList2.add(new H0.u(i12, i24, strI14, strI15, strI16, strI17));
                }
                map2 = map;
                arrayList7 = arrayList22;
                arrayList10 = arrayList23;
                arrayList9 = arrayList9;
                arrayList6 = arrayList6;
                arrayList5 = arrayList5;
                arrayList4 = arrayList4;
                arrayList8 = arrayList8;
            }
            map = map2;
            arrayList6 = arrayList6;
            map2 = map;
            arrayList7 = arrayList22;
            arrayList10 = arrayList23;
            arrayList9 = arrayList9;
            arrayList6 = arrayList6;
            arrayList5 = arrayList5;
            arrayList4 = arrayList4;
            arrayList8 = arrayList8;
        }
    }

    public static boolean f(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return "YES".equals(matcher.group(1));
        }
        return false;
    }

    public static double g(String str, Pattern pattern, double d6) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return d6;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        return Double.parseDouble(strGroup);
    }

    public static long h(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return -1L;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        return Long.parseLong(strGroup);
    }

    public static String i(String str, Pattern pattern, String str2, Map map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
            str2.getClass();
        }
        return (map.isEmpty() || str2 == null) ? str2 : k(str2, map);
    }

    public static String j(String str, Pattern pattern, Map map) throws P {
        String strI = i(str, pattern, null, map);
        if (strI != null) {
            return strI;
        }
        throw P.b("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    public static String k(String str, Map map) {
        Matcher matcher = f3966a1.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:9:0x0028, B:63:0x00fa, B:64:0x0100, B:12:0x002f, B:14:0x0035, B:18:0x003e, B:20:0x0046, B:22:0x004f, B:24:0x0055, B:26:0x005b, B:27:0x0060, B:29:0x0066, B:31:0x006c, B:34:0x0077, B:36:0x007f, B:40:0x0095, B:42:0x009d, B:44:0x00a5, B:46:0x00ad, B:48:0x00b5, B:50:0x00bd, B:52:0x00c5, B:54:0x00cd, B:57:0x00d6, B:58:0x00da), top: B:67:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0046 A[Catch: all -> 0x0093, LOOP:1: B:16:0x003b->B:20:0x0046, LOOP_END, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:9:0x0028, B:63:0x00fa, B:64:0x0100, B:12:0x002f, B:14:0x0035, B:18:0x003e, B:20:0x0046, B:22:0x004f, B:24:0x0055, B:26:0x005b, B:27:0x0060, B:29:0x0066, B:31:0x006c, B:34:0x0077, B:36:0x007f, B:40:0x0095, B:42:0x009d, B:44:0x00a5, B:46:0x00ad, B:48:0x00b5, B:50:0x00bd, B:52:0x00c5, B:54:0x00cd, B:57:0x00d6, B:58:0x00da), top: B:67:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0066 A[Catch: all -> 0x0093, LOOP:3: B:29:0x0066->B:88:0x0066, LOOP_START, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:9:0x0028, B:63:0x00fa, B:64:0x0100, B:12:0x002f, B:14:0x0035, B:18:0x003e, B:20:0x0046, B:22:0x004f, B:24:0x0055, B:26:0x005b, B:27:0x0060, B:29:0x0066, B:31:0x006c, B:34:0x0077, B:36:0x007f, B:40:0x0095, B:42:0x009d, B:44:0x00a5, B:46:0x00ad, B:48:0x00b5, B:50:0x00bd, B:52:0x00c5, B:54:0x00cd, B:57:0x00d6, B:58:0x00da), top: B:67:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:31:0x006c A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:9:0x0028, B:63:0x00fa, B:64:0x0100, B:12:0x002f, B:14:0x0035, B:18:0x003e, B:20:0x0046, B:22:0x004f, B:24:0x0055, B:26:0x005b, B:27:0x0060, B:29:0x0066, B:31:0x006c, B:34:0x0077, B:36:0x007f, B:40:0x0095, B:42:0x009d, B:44:0x00a5, B:46:0x00ad, B:48:0x00b5, B:50:0x00bd, B:52:0x00c5, B:54:0x00cd, B:57:0x00d6, B:58:0x00da), top: B:67:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0095 A[Catch: all -> 0x0093, TRY_ENTER, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:9:0x0028, B:63:0x00fa, B:64:0x0100, B:12:0x002f, B:14:0x0035, B:18:0x003e, B:20:0x0046, B:22:0x004f, B:24:0x0055, B:26:0x005b, B:27:0x0060, B:29:0x0066, B:31:0x006c, B:34:0x0077, B:36:0x007f, B:40:0x0095, B:42:0x009d, B:44:0x00a5, B:46:0x00ad, B:48:0x00b5, B:50:0x00bd, B:52:0x00c5, B:54:0x00cd, B:57:0x00d6, B:58:0x00da), top: B:67:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x007f A[SYNTHETIC] */
    @Override // S0.o
    public final Object B(Uri uri, C3186k c3186k) throws P {
        int i8;
        String line;
        String strTrim;
        Object objE;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(c3186k));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            int i9 = bufferedReader.read();
            if (i9 != 239) {
                while (i9 != -1 && Character.isWhitespace(i9)) {
                    i9 = bufferedReader.read();
                }
                for (i8 = 0; i8 < 7; i8++) {
                    if (i9 == "#EXTM3U".charAt(i8)) {
                        i9 = bufferedReader.read();
                    }
                }
                while (i9 != -1 && Character.isWhitespace(i9) && !M.O(i9)) {
                    i9 = bufferedReader.read();
                }
                if (M.O(i9)) {
                    while (true) {
                        line = bufferedReader.readLine();
                        if (line != null) {
                            M.g(bufferedReader);
                            throw P.b("Failed to parse the playlist, could not identify any tags.", null);
                        }
                        strTrim = line.trim();
                        if (!strTrim.isEmpty()) {
                            if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                                if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                                    arrayDeque.add(strTrim);
                                }
                                arrayDeque.add(strTrim);
                                objE = d(this.f3993G, this.f3994H, new p096m2.u(arrayDeque, bufferedReader), uri.toString());
                                break;
                            }
                            arrayDeque.add(strTrim);
                            objE = e(new p096m2.u(arrayDeque, bufferedReader), uri.toString());
                            break;
                            M.g(bufferedReader);
                            return objE;
                        }
                    }
                }
            } else if (bufferedReader.read() == 187 && bufferedReader.read() == 191) {
                i9 = bufferedReader.read();
                while (i9 != -1) {
                    i9 = bufferedReader.read();
                }
                while (i8 < 7) {
                    if (i9 == "#EXTM3U".charAt(i8)) {
                        i9 = bufferedReader.read();
                    }
                }
                while (i9 != -1) {
                    i9 = bufferedReader.read();
                }
                if (M.O(i9)) {
                    while (true) {
                        line = bufferedReader.readLine();
                        if (line != null) {
                            M.g(bufferedReader);
                            throw P.b("Failed to parse the playlist, could not identify any tags.", null);
                        }
                        strTrim = line.trim();
                        if (!strTrim.isEmpty()) {
                            if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                                if (!strTrim.startsWith("#EXT-X-TARGETDURATION")) {
                                    arrayDeque.add(strTrim);
                                }
                                arrayDeque.add(strTrim);
                                objE = d(this.f3993G, this.f3994H, new p096m2.u(arrayDeque, bufferedReader), uri.toString());
                                break;
                            }
                            arrayDeque.add(strTrim);
                            objE = e(new p096m2.u(arrayDeque, bufferedReader), uri.toString());
                            break;
                        }
                    }
                    M.g(bufferedReader);
                    return objE;
                }
            }
            throw P.b("Input does not start with the #EXTM3U header.", null);
        } catch (Throwable th) {
            M.g(bufferedReader);
            throw th;
        }
    }
}
