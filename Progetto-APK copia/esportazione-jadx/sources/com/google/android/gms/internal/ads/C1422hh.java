package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1422hh implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19121a;

    public /* synthetic */ C1422hh(int i8) {
        this.f19121a = i8;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) throws JSONException, IOException {
        int i8 = 9;
        int i9 = this.f19121a;
        int i10 = 0;
        int i11 = -1;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        int i12 = 1;
        String str2 = null;
        switch (i9) {
            case 0:
                Throwable th = (Throwable) obj;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.J9)).booleanValue()) {
                    p083k3.l.f25980A.f25987g.j("GetTopicsApiWithRecordObservationActionHandlerUnsampled", th);
                } else {
                    p083k3.l.f25980A.f25987g.h("GetTopicsApiWithRecordObservationActionHandler", th);
                }
                C1969sA c1969sA = AbstractC2073uA.f21207H;
                return Cw.N1(new L1.c(PA.f15340K));
            case 1:
                return (D4.b) obj;
            case 2:
                p113o3.I.l("Error during loading assets.", (Exception) obj);
                return Cw.N1(null);
            case 3:
                return Cw.H1(((ExecutionException) obj).getCause());
            case 4:
                return Cw.H1(new C0679Bo(5));
            case 5:
                return Cw.N1(null);
            case 6:
                return Cw.N1(((C1326fp) obj).f18807a);
            case 7:
                Throwable cause = (ExecutionException) obj;
                if (cause.getCause() != null) {
                    cause = cause.getCause();
                }
                return Cw.H1(cause);
            case 8:
                Throwable cause2 = (ExecutionException) obj;
                if (cause2.getCause() != null) {
                    cause2 = cause2.getCause();
                }
                return Cw.H1(cause2);
            case 9:
                Throwable cause3 = (ExecutionException) obj;
                if (cause3.getCause() != null) {
                    cause3 = cause3.getCause();
                }
                return Cw.H1(cause3);
            case 10:
                return Cw.N1(null);
            case 11:
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return Cw.N1(jSONObject);
                }
                try {
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
                    StringBuilder sb = new StringBuilder(8192);
                    char[] cArr = new char[2048];
                    while (true) {
                        int i13 = inputStreamReader.read(cArr);
                        if (i13 != -1) {
                            sb.append(cArr, 0, i13);
                        } else {
                            jSONObject = new JSONObject(sb.toString());
                        }
                        return Cw.N1(jSONObject);
                    }
                } catch (IOException | JSONException e8) {
                    p083k3.l.f25980A.f25987g.i("AdsServiceSignalTask.startAdsServiceSignalTask", e8);
                }
                break;
            case 12:
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                AbstractC1988se.f20906a.execute(new RunnableC1170co(i8, (InputStream) obj, parcelFileDescriptorArrCreatePipe[1]));
                return Cw.N1(parcelFileDescriptor);
            case 13:
                Jp jp = (Jp) obj;
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("response", jp.f14214a);
                    JSONObject jSONObject3 = new JSONObject();
                    for (String str3 : jp.f14215b.keySet()) {
                        if (str3 != null) {
                            List<String> list = (List) jp.f14215b.get(str3);
                            JSONArray jSONArray = new JSONArray();
                            for (String str4 : list) {
                                if (str4 != null) {
                                    jSONArray.put(str4);
                                }
                            }
                            jSONObject3.put(str3, jSONArray);
                        }
                    }
                    jSONObject2.put("headers", jSONObject3);
                    Object obj2 = jp.f14216c;
                    if (obj2 != null) {
                        jSONObject2.put("body", obj2);
                    }
                    jSONObject2.put("latency", jp.f14217d);
                    return Cw.N1(new ByteArrayInputStream(jSONObject2.toString().getBytes(StandardCharsets.UTF_8)));
                } catch (JSONException e9) {
                    p120p3.h.g("Error converting response to JSONObject: ".concat(String.valueOf(e9.getMessage())));
                    throw new JSONException("Parsing HTTP Response: ".concat(String.valueOf(e9.getCause())));
                }
            case 14:
                return Cw.N1(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            case 15:
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe2 = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe2[0];
                AbstractC1988se.f20906a.execute(new RunnableC1170co(i8, (InputStream) obj, parcelFileDescriptorArrCreatePipe2[1]));
                return Cw.N1(parcelFileDescriptor2);
            case 16:
                return Cw.N1(new Cs((String) obj, i12));
            case 17:
                return ((Throwable) obj) instanceof TimeoutException ? Cw.N1(new Es(0)) : Cw.N1(new Es(1));
            case 18:
                A3.b bVar = (A3.b) obj;
                return bVar == null ? Cw.N1(new Xs(str2, i11, i10)) : Cw.N1(new Xs(bVar.f635a, bVar.f636b, i10));
            case 19:
                L1.c cVar = (L1.c) obj;
                if (cVar == null) {
                    return Cw.N1(new Xs(str, i12));
                }
                C2029tI c2029tIA = C2081uI.A();
                for (L1.f fVar : cVar.f4619a) {
                    C1925rI c1925rIA = C1977sI.A();
                    int i14 = fVar.f4623c;
                    c1925rIA.d();
                    ((C1977sI) c1925rIA.f20255H).zzc = i14;
                    c1925rIA.d();
                    ((C1977sI) c1925rIA.f20255H).zzd = fVar.f4622b;
                    c1925rIA.d();
                    ((C1977sI) c1925rIA.f20255H).zze = fVar.f4621a;
                    C1977sI c1977sI = (C1977sI) c1925rIA.b();
                    c2029tIA.d();
                    C2081uI.B((C2081uI) c2029tIA.f20255H, c1977sI);
                }
                return Cw.N1(new Xs(Base64.encodeToString(((C2081uI) c2029tIA.b()).d(), 1), i12));
            case 20:
                A3.b bVar2 = (A3.b) obj;
                int i15 = 2;
                return bVar2 == null ? Cw.N1(new Xs(str2, i11, i15)) : Cw.N1(new Xs(bVar2.f635a, bVar2.f636b, i15));
            case 21:
                return C1298fC.f18730H;
            default:
                return Cw.N1(HttpUrl.FRAGMENT_ENCODE_SET);
        }
    }

    public /* synthetic */ C1422hh(int i8, int i9) {
        this.f19121a = i8;
    }
}
