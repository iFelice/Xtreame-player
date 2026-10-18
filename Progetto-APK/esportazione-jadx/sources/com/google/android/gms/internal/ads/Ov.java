package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ov {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final C0743Gd f15220A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final String f15221B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final JSONObject f15222C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final JSONObject f15223D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final String f15224E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final String f15225F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f15226G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f15227H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f15228I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f15229J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f15230K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f15231L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f15232M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f15233N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f15234O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f15235P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f15236Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f15237R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f15238S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f15239T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final String f15240U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Xu f15241V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f15242W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final boolean f15243X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final int f15244Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final String f15245Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f15246a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f15247a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15248b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f15249b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f15250c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final boolean f15251c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f15252d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final C1727nc f15253d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15254e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final p090l3.e1 f15255e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f15256f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final String f15257f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f15258g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final boolean f15259g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f15260h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final JSONObject f15261h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f15262i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final boolean f15263i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f15264j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final JSONObject f15265j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f15266k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final boolean f15267k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1624ld f15268l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final String f15269l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f15270m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final boolean f15271m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f15272n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final String f15273n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f15274o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final String f15275o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List f15276p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final String f15277p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f15278q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final boolean f15279q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f15280r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final boolean f15281r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Rv f15282s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final int f15283s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List f15284t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final String f15285t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List f15286u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final AbstractCollection f15287u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final JSONObject f15288v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final boolean f15289v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f15290w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final HashMap f15291w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f15292x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final String f15293y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final String f15294z;

    /* JADX WARN: Code duplicated, block: B:12:0x011d A[PHI: r88
      0x011d: PHI (r88v79 java.util.List) = 
      (r88v1 java.util.List)
      (r88v2 java.util.List)
      (r88v3 java.util.List)
      (r88v4 java.util.List)
      (r88v5 java.util.List)
      (r88v6 java.util.List)
      (r88v7 java.util.List)
      (r88v8 java.util.List)
      (r88v9 java.util.List)
      (r88v10 java.util.List)
      (r88v11 java.util.List)
      (r88v12 java.util.List)
      (r88v13 java.util.List)
      (r88v14 java.util.List)
      (r88v15 java.util.List)
      (r88v16 java.util.List)
      (r88v17 java.util.List)
      (r88v18 java.util.List)
      (r88v19 java.util.List)
      (r88v20 java.util.List)
      (r88v21 java.util.List)
      (r88v22 java.util.List)
      (r88v23 java.util.List)
      (r88v24 java.util.List)
      (r88v25 java.util.List)
      (r88v26 java.util.List)
      (r88v27 java.util.List)
      (r88v28 java.util.List)
      (r88v29 java.util.List)
      (r88v30 java.util.List)
      (r88v31 java.util.List)
      (r88v32 java.util.List)
      (r88v33 java.util.List)
      (r88v34 java.util.List)
      (r88v35 java.util.List)
      (r88v36 java.util.List)
      (r88v37 java.util.List)
      (r88v38 java.util.List)
      (r88v39 java.util.List)
      (r88v40 java.util.List)
      (r88v41 java.util.List)
      (r88v42 java.util.List)
      (r88v43 java.util.List)
      (r88v44 java.util.List)
      (r88v45 java.util.List)
      (r88v46 java.util.List)
      (r88v47 java.util.List)
      (r88v48 java.util.List)
      (r88v49 java.util.List)
      (r88v50 java.util.List)
      (r88v51 java.util.List)
      (r88v52 java.util.List)
      (r88v53 java.util.List)
      (r88v54 java.util.List)
      (r88v55 java.util.List)
      (r88v56 java.util.List)
      (r88v57 java.util.List)
      (r88v58 java.util.List)
      (r88v59 java.util.List)
      (r88v60 java.util.List)
      (r88v61 java.util.List)
      (r88v62 java.util.List)
      (r88v63 java.util.List)
      (r88v64 java.util.List)
      (r88v65 java.util.List)
      (r88v66 java.util.List)
      (r88v67 java.util.List)
      (r88v68 java.util.List)
      (r88v69 java.util.List)
      (r88v70 java.util.List)
      (r88v71 java.util.List)
      (r88v72 java.util.List)
      (r88v73 java.util.List)
      (r88v74 java.util.List)
      (r88v75 java.util.List)
      (r88v76 java.util.List)
      (r88v77 java.util.List)
      (r88v80 java.util.List)
     binds: [B:318:0x066e, B:314:0x065e, B:310:0x064e, B:306:0x063e, B:302:0x062e, B:298:0x061e, B:294:0x060d, B:290:0x05fc, B:286:0x05ea, B:282:0x05d8, B:278:0x05c6, B:274:0x05b4, B:270:0x05a2, B:266:0x0590, B:262:0x057e, B:258:0x056c, B:254:0x055a, B:250:0x0548, B:246:0x0536, B:242:0x0524, B:238:0x0512, B:234:0x0500, B:230:0x04ee, B:226:0x04dc, B:222:0x04ca, B:218:0x04b8, B:214:0x04a6, B:210:0x0494, B:206:0x0482, B:202:0x0470, B:198:0x045e, B:194:0x044c, B:190:0x043a, B:186:0x0428, B:182:0x0416, B:178:0x0404, B:174:0x03f2, B:170:0x03e0, B:166:0x03ce, B:162:0x03bc, B:158:0x03aa, B:154:0x0398, B:150:0x0386, B:146:0x0374, B:142:0x0362, B:138:0x0350, B:134:0x033e, B:130:0x032c, B:126:0x031a, B:122:0x0308, B:118:0x02f6, B:114:0x02e4, B:110:0x02d2, B:106:0x02c0, B:102:0x02ae, B:98:0x029c, B:94:0x028a, B:90:0x0278, B:86:0x0266, B:82:0x0254, B:78:0x0242, B:74:0x0230, B:70:0x021e, B:66:0x020c, B:62:0x01fa, B:58:0x01e8, B:54:0x01d6, B:50:0x01c4, B:46:0x01b2, B:42:0x01a1, B:38:0x0190, B:34:0x017f, B:30:0x016e, B:26:0x015d, B:22:0x014c, B:18:0x013b, B:14:0x012a, B:11:0x011b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:321:0x0673. Please report as an issue. */
    public Ov(JsonReader jsonReader) throws JSONException, IOException {
        List list;
        byte b8;
        String str;
        C1624ld c1624ld;
        List listEmptyList = Collections.emptyList();
        List listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        List listEmptyList4 = Collections.emptyList();
        List listEmptyList5 = Collections.emptyList();
        List listEmptyList6 = Collections.emptyList();
        List listEmptyList7 = Collections.emptyList();
        List listEmptyList8 = Collections.emptyList();
        List listEmptyList9 = Collections.emptyList();
        List listEmptyList10 = Collections.emptyList();
        List listEmptyList11 = Collections.emptyList();
        List listEmptyList12 = Collections.emptyList();
        List listEmptyList13 = Collections.emptyList();
        List listEmptyList14 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        HashMap map = new HashMap();
        jsonReader.beginObject();
        String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        String strNextString = HttpUrl.FRAGMENT_ENCODE_SET;
        String strNextString2 = strNextString;
        String strNextString3 = strNextString2;
        String string = strNextString3;
        String strNextString4 = string;
        String strNextString5 = strNextString4;
        String strNextString6 = strNextString5;
        String strNextString7 = strNextString6;
        String strNextString8 = strNextString7;
        String strNextString9 = strNextString8;
        String strNextString10 = strNextString9;
        String strNextString11 = strNextString10;
        String strNextString12 = strNextString11;
        String strNextString13 = strNextString12;
        String strNextString14 = strNextString13;
        String strNextString15 = strNextString14;
        String strNextString16 = strNextString15;
        String strNextString17 = strNextString16;
        JSONObject jSONObjectA0 = jSONObject;
        JSONObject jSONObjectA1 = jSONObject2;
        JSONObject jSONObjectA2 = jSONObject3;
        JSONObject jSONObjectA3 = jSONObject4;
        JSONObject jSONObjectA4 = jSONObject5;
        JSONObject jSONObjectA5 = jSONObject6;
        AbstractCollection abstractCollectionO = pa;
        HashMap map2 = map;
        int i8 = 0;
        int iNextInt = 0;
        Rv rv = null;
        C0743Gd c0743Gd = null;
        boolean zNextBoolean = false;
        boolean zNextBoolean2 = false;
        boolean zNextBoolean3 = false;
        boolean zNextBoolean4 = false;
        boolean zNextBoolean5 = false;
        boolean zNextBoolean6 = false;
        boolean zNextBoolean7 = false;
        int i9 = -1;
        int iNextInt2 = 0;
        boolean zNextBoolean8 = false;
        boolean zNextBoolean9 = false;
        boolean zNextBoolean10 = false;
        int iNextInt3 = 0;
        int iNextInt4 = -1;
        boolean zNextBoolean11 = false;
        C1727nc c1727nc = null;
        p090l3.e1 e1Var = null;
        boolean zNextBoolean12 = false;
        boolean zNextBoolean13 = false;
        boolean zNextBoolean14 = false;
        String strNextString18 = null;
        boolean zNextBoolean15 = false;
        boolean zNextBoolean16 = false;
        boolean zNextBoolean17 = false;
        boolean zNextBoolean18 = false;
        int iNextInt5 = 0;
        boolean zNextBoolean19 = false;
        List listO = listEmptyList10;
        List listO2 = listEmptyList11;
        List listA = listEmptyList12;
        List listO3 = listEmptyList13;
        List listA2 = listEmptyList14;
        C1624ld c1624ldI = null;
        int i10 = 0;
        String strNextString19 = strNextString17;
        String strNextString20 = strNextString19;
        List listO4 = listEmptyList9;
        List listO5 = listEmptyList8;
        List listO6 = listEmptyList7;
        List listO7 = listEmptyList6;
        List listO8 = listEmptyList5;
        List listO9 = listEmptyList4;
        List listO10 = listEmptyList3;
        List listO11 = listEmptyList2;
        List listO12 = listEmptyList;
        while (true) {
            listO4 = listO4;
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                this.f15246a = listO12;
                this.f15248b = i8;
                this.f15250c = listO11;
                this.f15252d = listO10;
                this.f15256f = listO9;
                this.f15254e = i10;
                this.f15258g = listO8;
                this.f15260h = listO7;
                this.f15262i = listO6;
                this.f15264j = strNextString20;
                this.f15266k = strNextString19;
                this.f15268l = c1624ldI;
                this.f15270m = listO5;
                this.f15272n = listO4;
                this.f15274o = listO;
                this.f15276p = listO2;
                this.f15278q = iNextInt;
                this.f15280r = listA;
                this.f15282s = rv;
                this.f15284t = listO3;
                this.f15286u = listA2;
                this.f15290w = strNextString;
                this.f15288v = jSONObjectA0;
                this.f15292x = strNextString2;
                this.f15293y = strNextString3;
                this.f15294z = string;
                this.f15220A = c0743Gd;
                this.f15221B = strNextString4;
                this.f15222C = jSONObjectA1;
                this.f15223D = jSONObjectA2;
                this.f15229J = zNextBoolean;
                this.f15230K = zNextBoolean2;
                this.f15231L = zNextBoolean3;
                this.f15232M = zNextBoolean4;
                this.f15233N = zNextBoolean5;
                this.f15234O = zNextBoolean6;
                this.f15235P = zNextBoolean7;
                this.f15236Q = i9;
                this.f15237R = iNextInt2;
                this.f15239T = zNextBoolean8;
                this.f15240U = strNextString5;
                this.f15241V = new Xu(jSONObjectA3, 8);
                this.f15242W = zNextBoolean9;
                this.f15243X = zNextBoolean10;
                this.f15244Y = iNextInt3;
                this.f15245Z = strNextString6;
                this.f15247a0 = iNextInt4;
                this.f15249b0 = strNextString7;
                this.f15251c0 = zNextBoolean11;
                this.f15253d0 = c1727nc;
                this.f15255e0 = e1Var;
                this.f15257f0 = strNextString8;
                this.f15259g0 = zNextBoolean12;
                this.f15261h0 = jSONObjectA4;
                this.f15224E = strNextString9;
                this.f15225F = strNextString10;
                this.f15226G = strNextString11;
                this.f15227H = strNextString12;
                this.f15228I = strNextString13;
                this.f15263i0 = zNextBoolean13;
                this.f15265j0 = jSONObjectA5;
                this.f15267k0 = zNextBoolean14;
                this.f15269l0 = strNextString18;
                this.f15271m0 = zNextBoolean15;
                this.f15238S = zNextBoolean16;
                this.f15273n0 = strNextString14;
                this.f15275o0 = strNextString15;
                this.f15277p0 = strNextString16;
                this.f15279q0 = zNextBoolean17;
                this.f15281r0 = zNextBoolean18;
                this.f15283s0 = iNextInt5;
                this.f15287u0 = abstractCollectionO;
                this.f15285t0 = strNextString17;
                this.f15289v0 = zNextBoolean19;
                this.f15291w0 = map2;
                return;
            }
            String strNextName = jsonReader.nextName();
            String str3 = strNextName == null ? str2 : strNextName;
            switch (str3.hashCode()) {
                case -2138196627:
                    list = listO5;
                    if (!str3.equals("ad_source_instance_name")) {
                        b8 = -1;
                    } else {
                        b8 = 0;
                    }
                    break;
                case -1980587809:
                    list = listO5;
                    if (!str3.equals("debug_signals")) {
                        b8 = -1;
                    } else {
                        b8 = 1;
                    }
                    break;
                case -1965512151:
                    list = listO5;
                    if (!str3.equals("omid_settings")) {
                        b8 = -1;
                    } else {
                        b8 = 2;
                    }
                    break;
                case -1871425831:
                    list = listO5;
                    if (!str3.equals("recursive_server_response_data")) {
                        b8 = -1;
                    } else {
                        b8 = 3;
                    }
                    break;
                case -1843156475:
                    list = listO5;
                    if (!str3.equals("is_consent")) {
                        b8 = -1;
                    } else {
                        b8 = 4;
                    }
                    break;
                case -1812055556:
                    list = listO5;
                    if (!str3.equals("play_prewarm_options")) {
                        b8 = -1;
                    } else {
                        b8 = 5;
                    }
                    break;
                case -1785028569:
                    list = listO5;
                    if (!str3.equals("parallel_key")) {
                        b8 = -1;
                    } else {
                        b8 = 6;
                    }
                    break;
                case -1776946669:
                    list = listO5;
                    if (!str3.equals("ad_source_name")) {
                        b8 = -1;
                    } else {
                        b8 = 7;
                    }
                    break;
                case -1662989631:
                    list = listO5;
                    if (!str3.equals("is_interscroller")) {
                        b8 = -1;
                    } else {
                        b8 = 8;
                    }
                    break;
                case -1620470467:
                    list = listO5;
                    if (!str3.equals("backend_query_id")) {
                        b8 = -1;
                    } else {
                        b8 = 9;
                    }
                    break;
                case -1550155393:
                    list = listO5;
                    if (!str3.equals("nofill_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 10;
                    }
                    break;
                case -1440104884:
                    list = listO5;
                    if (!str3.equals("is_custom_close_blocked")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    }
                    break;
                case -1439500848:
                    list = listO5;
                    if (!str3.equals("orientation")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    }
                    break;
                case -1428969291:
                    list = listO5;
                    if (!str3.equals("enable_omid")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    }
                    break;
                case -1406227629:
                    list = listO5;
                    if (!str3.equals("buffer_click_url_as_ready_to_ping")) {
                        b8 = -1;
                    } else {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    }
                    break;
                case -1403779768:
                    list = listO5;
                    if (!str3.equals("showable_impression_type")) {
                        b8 = -1;
                    } else {
                        b8 = 15;
                    }
                    break;
                case -1375413093:
                    list = listO5;
                    if (!str3.equals("ad_cover")) {
                        b8 = -1;
                    } else {
                        b8 = 16;
                    }
                    break;
                case -1360811658:
                    list = listO5;
                    if (!str3.equals("ad_sizes")) {
                        b8 = -1;
                    } else {
                        b8 = 17;
                    }
                    break;
                case -1306015996:
                    list = listO5;
                    if (!str3.equals("adapters")) {
                        b8 = -1;
                    } else {
                        b8 = 18;
                    }
                    break;
                case -1303332046:
                    list = listO5;
                    if (!str3.equals("test_mode_enabled")) {
                        b8 = -1;
                    } else {
                        b8 = 19;
                    }
                    break;
                case -1289032093:
                    list = listO5;
                    if (!str3.equals("extras")) {
                        b8 = -1;
                    } else {
                        b8 = 20;
                    }
                    break;
                case -1240082064:
                    list = listO5;
                    if (!str3.equals("ad_event_value")) {
                        b8 = -1;
                    } else {
                        b8 = 21;
                    }
                    break;
                case -1234181075:
                    list = listO5;
                    if (!str3.equals("allow_pub_rendered_attribution")) {
                        b8 = -1;
                    } else {
                        b8 = 22;
                    }
                    break;
                case -1168140544:
                    list = listO5;
                    if (!str3.equals("presentation_error_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 23;
                    }
                    break;
                case -1152230954:
                    list = listO5;
                    if (!str3.equals("ad_type")) {
                        b8 = -1;
                    } else {
                        b8 = 24;
                    }
                    break;
                case -1146534047:
                    list = listO5;
                    if (!str3.equals("is_scroll_aware")) {
                        b8 = -1;
                    } else {
                        b8 = 25;
                    }
                    break;
                case -1115838944:
                    list = listO5;
                    if (!str3.equals("fill_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 26;
                    }
                    break;
                case -1081936678:
                    list = listO5;
                    if (!str3.equals("allocation_id")) {
                        b8 = -1;
                    } else {
                        b8 = 27;
                    }
                    break;
                case -1078050970:
                    list = listO5;
                    if (!str3.equals("video_complete_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 28;
                    }
                    break;
                case -1051269058:
                    list = listO5;
                    if (!str3.equals("active_view")) {
                        b8 = -1;
                    } else {
                        b8 = 29;
                    }
                    break;
                case -982608540:
                    list = listO5;
                    if (!str3.equals("valid_from_timestamp")) {
                        b8 = -1;
                    } else {
                        b8 = 30;
                    }
                    break;
                case -972056451:
                    list = listO5;
                    if (!str3.equals("ad_source_instance_id")) {
                        b8 = -1;
                    } else {
                        b8 = 31;
                    }
                    break;
                case -776859333:
                    list = listO5;
                    if (!str3.equals("click_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 32;
                    }
                    break;
                case -570101180:
                    list = listO5;
                    if (!str3.equals("late_load_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 33;
                    }
                    break;
                case -544216775:
                    list = listO5;
                    if (!str3.equals("safe_browsing")) {
                        b8 = -1;
                    } else {
                        b8 = 34;
                    }
                    break;
                case -437057161:
                    list = listO5;
                    if (!str3.equals("imp_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 35;
                    }
                    break;
                case -404433734:
                    list = listO5;
                    if (!str3.equals("rtb_native_required_assets")) {
                        b8 = -1;
                    } else {
                        b8 = 36;
                    }
                    break;
                case -404326515:
                    list = listO5;
                    if (!str3.equals("render_timeout_ms")) {
                        b8 = -1;
                    } else {
                        b8 = 37;
                    }
                    break;
                case -397704715:
                    list = listO5;
                    if (!str3.equals("ad_close_time_ms")) {
                        b8 = -1;
                    } else {
                        b8 = 38;
                    }
                    break;
                case -388807511:
                    list = listO5;
                    if (!str3.equals("content_url")) {
                        b8 = -1;
                    } else {
                        b8 = 39;
                    }
                    break;
                case -369773488:
                    list = listO5;
                    if (!str3.equals("is_close_button_enabled")) {
                        b8 = -1;
                    } else {
                        b8 = 40;
                    }
                    break;
                case -213449460:
                    list = listO5;
                    if (!str3.equals("force_disable_hardware_acceleration")) {
                        b8 = -1;
                    } else {
                        b8 = 41;
                    }
                    break;
                case -213424028:
                    list = listO5;
                    if (!str3.equals("watermark")) {
                        b8 = -1;
                    } else {
                        b8 = 42;
                    }
                    break;
                case -180214626:
                    list = listO5;
                    if (!str3.equals("native_required_asset_viewability")) {
                        b8 = -1;
                    } else {
                        b8 = 43;
                    }
                    break;
                case -154616268:
                    list = listO5;
                    if (!str3.equals("is_offline_ad")) {
                        b8 = -1;
                    } else {
                        b8 = 44;
                    }
                    break;
                case -29338502:
                    list = listO5;
                    if (!str3.equals("allow_custom_click_gesture")) {
                        b8 = -1;
                    } else {
                        b8 = 45;
                    }
                    break;
                case 3107:
                    list = listO5;
                    if (!str3.equals("ad")) {
                        b8 = -1;
                    } else {
                        b8 = 46;
                    }
                    break;
                case 3355:
                    list = listO5;
                    if (!str3.equals("id")) {
                        b8 = -1;
                    } else {
                        b8 = 47;
                    }
                    break;
                case 3076010:
                    list = listO5;
                    if (!str3.equals("data")) {
                        b8 = -1;
                    } else {
                        b8 = 48;
                    }
                    break;
                case 37109963:
                    list = listO5;
                    if (!str3.equals("request_id")) {
                        b8 = -1;
                    } else {
                        b8 = 49;
                    }
                    break;
                case 63195984:
                    list = listO5;
                    if (!str3.equals("render_test_label")) {
                        b8 = -1;
                    } else {
                        b8 = 50;
                    }
                    break;
                case 107433883:
                    list = listO5;
                    if (!str3.equals("qdata")) {
                        b8 = -1;
                    } else {
                        b8 = 51;
                    }
                    break;
                case 230323073:
                    list = listO5;
                    if (!str3.equals("ad_load_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 52;
                    }
                    break;
                case 418392395:
                    list = listO5;
                    if (!str3.equals("is_closable_area_disabled")) {
                        b8 = -1;
                    } else {
                        b8 = 53;
                    }
                    break;
                case 542250332:
                    list = listO5;
                    if (!str3.equals("consent_form_action_identifier")) {
                        b8 = -1;
                    } else {
                        b8 = 54;
                    }
                    break;
                case 549176928:
                    list = listO5;
                    if (!str3.equals("presentation_error_timeout_ms")) {
                        b8 = -1;
                    } else {
                        b8 = 55;
                    }
                    break;
                case 597473788:
                    list = listO5;
                    if (!str3.equals("debug_dialog_string")) {
                        b8 = -1;
                    } else {
                        b8 = 56;
                    }
                    break;
                case 754887508:
                    list = listO5;
                    if (!str3.equals("container_sizes")) {
                        b8 = -1;
                    } else {
                        b8 = 57;
                    }
                    break;
                case 791122864:
                    list = listO5;
                    if (!str3.equals("impression_type")) {
                        b8 = -1;
                    } else {
                        b8 = 58;
                    }
                    break;
                case 805095541:
                    list = listO5;
                    if (!str3.equals("analytics_event_name_to_parameters_map")) {
                        b8 = -1;
                    } else {
                        b8 = 59;
                    }
                    break;
                case 1010584092:
                    list = listO5;
                    if (!str3.equals("transaction_id")) {
                        b8 = -1;
                    } else {
                        b8 = 60;
                    }
                    break;
                case 1100650276:
                    list = listO5;
                    if (!str3.equals("rewards")) {
                        b8 = -1;
                    } else {
                        b8 = 61;
                    }
                    break;
                case 1141602460:
                    list = listO5;
                    if (!str3.equals("adapter_response_info_key")) {
                        b8 = -1;
                    } else {
                        b8 = 62;
                    }
                    break;
                case 1186014765:
                    list = listO5;
                    if (!str3.equals("cache_hit_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 63;
                    }
                    break;
                case 1321720943:
                    list = listO5;
                    if (!str3.equals("allow_pub_owned_ad_view")) {
                        b8 = -1;
                    } else {
                        b8 = 64;
                    }
                    break;
                case 1422388341:
                    list = listO5;
                    if (!str3.equals("is_collapsible")) {
                        b8 = -1;
                    } else {
                        b8 = 65;
                    }
                    break;
                case 1437255331:
                    list = listO5;
                    if (!str3.equals("ad_source_id")) {
                        b8 = -1;
                    } else {
                        b8 = 66;
                    }
                    break;
                case 1637553475:
                    list = listO5;
                    if (!str3.equals("bid_response")) {
                        b8 = -1;
                    } else {
                        b8 = 67;
                    }
                    break;
                case 1638957285:
                    list = listO5;
                    if (!str3.equals("video_start_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 68;
                    }
                    break;
                case 1686319423:
                    list = listO5;
                    if (!str3.equals("ad_network_class_name")) {
                        b8 = -1;
                    } else {
                        b8 = 69;
                    }
                    break;
                case 1688341040:
                    list = listO5;
                    if (!str3.equals("video_reward_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 70;
                    }
                    break;
                case 1799285870:
                    list = listO5;
                    if (!str3.equals("use_third_party_container_height")) {
                        b8 = -1;
                    } else {
                        b8 = 71;
                    }
                    break;
                case 1839650832:
                    list = listO5;
                    if (!str3.equals("renderers")) {
                        b8 = -1;
                    } else {
                        b8 = 72;
                    }
                    break;
                case 1875425491:
                    list = listO5;
                    if (!str3.equals("is_analytics_logging_enabled")) {
                        b8 = -1;
                    } else {
                        b8 = 73;
                    }
                    break;
                case 2068142375:
                    list = listO5;
                    if (!str3.equals("rule_line_external_id")) {
                        b8 = -1;
                    } else {
                        b8 = 74;
                    }
                    break;
                case 2072888499:
                    list = listO5;
                    if (!str3.equals("manual_tracking_urls")) {
                        b8 = -1;
                    } else {
                        b8 = 75;
                    }
                    break;
                case 2075506442:
                    list = listO5;
                    if (!str3.equals("render_serially")) {
                        b8 = -1;
                    } else {
                        b8 = 76;
                    }
                    break;
                default:
                    list = listO5;
                    b8 = -1;
                    break;
            }
            switch (b8) {
                case 0:
                    str = str2;
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    J7 j8 = Q7.f15881l6;
                    j8.getClass();
                    if (((Boolean) C3099q.f26624d.f26627c.a(j8)).booleanValue()) {
                        strNextString12 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    str2 = str;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 1:
                    jSONObjectA1 = Q3.b.a0(jsonReader);
                    c1624ldI = c1624ldI;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 2:
                    jSONObjectA3 = Q3.b.a0(jsonReader);
                    c1624ldI = c1624ldI;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 3:
                    strNextString15 = jsonReader.nextString();
                    c1624ldI = c1624ldI;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 4:
                    zNextBoolean18 = jsonReader.nextBoolean();
                    c1624ldI = c1624ldI;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 5:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    JSONObject jSONObjectA6 = Q3.b.a0(jsonReader);
                    str = str2;
                    c1727nc = new C1727nc(jSONObjectA6.optString("prefetch_url", str2), jSONObjectA6.optBoolean("enable_prewarming", false), jSONObjectA6.optBoolean("skip_offline_notification_flow", false));
                    str2 = str;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 6:
                    strNextString17 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 7:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    J7 j9 = Q7.f15881l6;
                    j9.getClass();
                    if (((Boolean) C3099q.f26624d.f26627c.a(j9)).booleanValue()) {
                        strNextString10 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                        str = str2;
                        str2 = str;
                    }
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 8:
                    zNextBoolean12 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 9:
                    strNextString7 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 10:
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    listO4 = Q3.b.O(jsonReader);
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 11:
                    zNextBoolean6 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 12:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    String strNextString21 = jsonReader.nextString();
                    i9 = "landscape".equalsIgnoreCase(strNextString21) ? 6 : "portrait".equalsIgnoreCase(strNextString21) ? 7 : -1;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 13:
                    zNextBoolean8 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 14:
                    zNextBoolean16 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 15:
                    iNextInt3 = jsonReader.nextInt();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 16:
                    jSONObjectA4 = Q3.b.a0(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 17:
                    listA2 = Pv.a(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 18:
                    listO3 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 19:
                    zNextBoolean5 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 20:
                    jSONObjectA2 = Q3.b.a0(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 21:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    JSONObject jSONObjectA7 = Q3.b.a0(jsonReader);
                    e1Var = new p090l3.e1(jSONObjectA7.getInt("type_num"), jSONObjectA7.getInt("precision_num"), jSONObjectA7.getLong("value"), jSONObjectA7.getString("currency"));
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 22:
                    zNextBoolean = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 23:
                    listO = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 24:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    String strNextString22 = jsonReader.nextString();
                    i8 = "banner".equals(strNextString22) ? 1 : "interstitial".equals(strNextString22) ? 2 : "native_express".equals(strNextString22) ? 3 : "native".equals(strNextString22) ? 4 : "rewarded".equals(strNextString22) ? 5 : "app_open_ad".equals(strNextString22) ? 6 : "rewarded_interstitial".equals(strNextString22) ? 7 : 0;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 25:
                    zNextBoolean10 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    listO5 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 27:
                    strNextString = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    listO6 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    string = Q3.b.a0(jsonReader).toString();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    strNextString20 = strNextString20;
                    strNextString19 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    strNextString20 = strNextString20;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    J7 j10 = Q7.f15881l6;
                    j10.getClass();
                    if (((Boolean) C3099q.f26624d.f26627c.a(j10)).booleanValue()) {
                        strNextString13 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                        str = str2;
                        str2 = str;
                    }
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 32:
                    listO11 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 33:
                    abstractCollectionO = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    JSONObject jSONObjectA8 = Q3.b.a0(jsonReader);
                    c0743Gd = new C0743Gd(jSONObjectA8.optString("click_string", str2), jSONObjectA8.optString("report_url", str2), jSONObjectA8.optBoolean("rendered_ad_enabled", false), jSONObjectA8.optBoolean("non_malicious_reporting_enabled", false), Q3.b.L(null, jSONObjectA8.optJSONArray("allowed_headers")), jSONObjectA8.optBoolean("protection_enabled", false), jSONObjectA8.optBoolean("malicious_reporting_enabled", false), Q3.b.L(null, jSONObjectA8.optJSONArray("webview_permissions")));
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 35:
                    listO10 = Q3.b.O(jsonReader);
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    jSONObjectA5 = Q3.b.a0(jsonReader);
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 37:
                    iNextInt2 = jsonReader.nextInt();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 38:
                    iNextInt4 = jsonReader.nextInt();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    strNextString18 = jsonReader.nextString();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    jsonReader.nextBoolean();
                    str = str2;
                    str2 = str;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    zNextBoolean15 = jsonReader.nextBoolean();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    strNextString6 = jsonReader.nextString();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 43:
                    zNextBoolean14 = jsonReader.nextBoolean();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    zNextBoolean13 = jsonReader.nextBoolean();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    zNextBoolean3 = jsonReader.nextBoolean();
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 46:
                    rv = new Rv(jsonReader);
                    listO5 = list;
                    strNextString19 = strNextString19;
                    break;
                case 47:
                    strNextString2 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 48:
                    jSONObjectA0 = Q3.b.a0(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 49:
                    strNextString14 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 50:
                    zNextBoolean4 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 51:
                    strNextString3 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 52:
                    listO9 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 53:
                    zNextBoolean7 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 54:
                    iNextInt5 = jsonReader.nextInt();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 55:
                    iNextInt = jsonReader.nextInt();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 56:
                    strNextString4 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 57:
                    listA = Pv.a(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 58:
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    int iNextInt6 = jsonReader.nextInt();
                    i10 = (iNextInt6 == 0 || iNextInt6 == 1 || iNextInt6 == 3) ? iNextInt6 : 0;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case 59:
                    J7 j11 = Q7.f15755X;
                    j11.getClass();
                    if (((Boolean) C3099q.f26624d.f26627c.a(j11)).booleanValue()) {
                        HashMap map3 = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            C1624ld c1624ld2 = c1624ldI;
                            HashMap map4 = new HashMap();
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                map4.put(jsonReader.nextName(), jsonReader.nextString());
                                strNextString19 = strNextString19;
                                strNextString20 = strNextString20;
                            }
                            jsonReader.endObject();
                            map3.put(strNextName2, map4);
                            c1624ldI = c1624ld2;
                        }
                        c1624ld = c1624ldI;
                        strNextString19 = strNextString19;
                        strNextString20 = strNextString20;
                        jsonReader.endObject();
                        map2 = map3;
                    } else {
                        c1624ld = c1624ldI;
                        strNextString19 = strNextString19;
                        strNextString20 = strNextString20;
                        jsonReader.skipValue();
                        str = str2;
                        str2 = str;
                    }
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    strNextString20 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 61:
                    c1624ldI = C1624ld.i(Q3.b.V(jsonReader));
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 62:
                    strNextString16 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 63:
                    Q3.b.O(jsonReader);
                    str = str2;
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    str2 = str;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    zNextBoolean2 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 65:
                    zNextBoolean17 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 66:
                    J7 j12 = Q7.f15881l6;
                    j12.getClass();
                    if (!((Boolean) C3099q.f26624d.f26627c.a(j12)).booleanValue()) {
                        jsonReader.skipValue();
                        str = str2;
                        c1624ld = c1624ldI;
                        strNextString19 = strNextString19;
                        strNextString20 = strNextString20;
                        str2 = str;
                        listO4 = listO4;
                        c1624ldI = c1624ld;
                        listO5 = list;
                        strNextString19 = strNextString19;
                        strNextString20 = strNextString20;
                    } else {
                        strNextString11 = jsonReader.nextString();
                        listO4 = listO4;
                        listO5 = list;
                    }
                    break;
                case 67:
                    strNextString5 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 68:
                    listO8 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 69:
                    strNextString9 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 70:
                    listO7 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 71:
                    zNextBoolean11 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 72:
                    listO12 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 73:
                    zNextBoolean9 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 74:
                    strNextString8 = jsonReader.nextString();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 75:
                    listO2 = Q3.b.O(jsonReader);
                    listO4 = listO4;
                    listO5 = list;
                    break;
                case 76:
                    zNextBoolean19 = jsonReader.nextBoolean();
                    listO4 = listO4;
                    listO5 = list;
                    break;
                default:
                    jsonReader.skipValue();
                    str = str2;
                    c1624ld = c1624ldI;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    str2 = str;
                    listO4 = listO4;
                    c1624ldI = c1624ld;
                    listO5 = list;
                    strNextString19 = strNextString19;
                    strNextString20 = strNextString20;
                    break;
            }
        }
    }

    public static String a(int i8) {
        switch (i8) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }
}
