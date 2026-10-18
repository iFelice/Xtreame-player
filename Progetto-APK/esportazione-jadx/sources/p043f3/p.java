package p043f3;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.InterfaceC3113x0;
import p090l3.g1;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3113x0 f25195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f25196b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f25197c;

    public p(InterfaceC3113x0 interfaceC3113x0) {
        this.f25195a = interfaceC3113x0;
        if (interfaceC3113x0 != null) {
            try {
                List<g1> listZzj = interfaceC3113x0.zzj();
                if (listZzj != null) {
                    for (g1 g1Var : listZzj) {
                        h hVar = g1Var != null ? new h(g1Var) : null;
                        if (hVar != null) {
                            this.f25196b.add(hVar);
                        }
                    }
                }
            } catch (RemoteException e8) {
                h.e("Could not forward getAdapterResponseInfo to ResponseInfo.", e8);
            }
        }
        InterfaceC3113x0 interfaceC3113x1 = this.f25195a;
        if (interfaceC3113x1 == null) {
            return;
        }
        try {
            g1 g1VarZzf = interfaceC3113x1.zzf();
            if (g1VarZzf != null) {
                this.f25197c = new h(g1VarZzf);
            }
        } catch (RemoteException e9) {
            h.e("Could not forward getLoadedAdapterResponse to ResponseInfo.", e9);
        }
    }

    public final JSONObject a() throws JSONException {
        String strZzi;
        Bundle bundleZze;
        JSONObject jSONObject = new JSONObject();
        InterfaceC3113x0 interfaceC3113x0 = this.f25195a;
        String strZzg = null;
        if (interfaceC3113x0 != null) {
            try {
                strZzi = interfaceC3113x0.zzi();
            } catch (RemoteException e8) {
                h.e("Could not forward getResponseId to ResponseInfo.", e8);
                strZzi = null;
            }
        } else {
            strZzi = null;
        }
        if (strZzi == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", strZzi);
        }
        if (interfaceC3113x0 != null) {
            try {
                strZzg = interfaceC3113x0.zzg();
            } catch (RemoteException e9) {
                h.e("Could not forward getMediationAdapterClassName to ResponseInfo.", e9);
            }
        }
        if (strZzg == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", strZzg);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.f25196b.iterator();
        while (it.hasNext()) {
            jSONArray.put(((h) it.next()).a());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        h hVar = this.f25197c;
        if (hVar != null) {
            jSONObject.put("Loaded Adapter Response", hVar.a());
        }
        if (interfaceC3113x0 != null) {
            try {
                bundleZze = interfaceC3113x0.zze();
            } catch (RemoteException e10) {
                h.e("Could not forward getResponseExtras to ResponseInfo.", e10);
                bundleZze = new Bundle();
            }
        } else {
            bundleZze = new Bundle();
        }
        if (bundleZze != null) {
            jSONObject.put("Response Extras", C3097p.f26618f.f26619a.h(bundleZze));
        }
        return jSONObject;
    }

    public final String toString() {
        try {
            return a().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
