package p143s2;

import B0.C0041c;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import p117p0.AbstractC3164b;
import p135r2.h;
import p135r2.i;
import p135r2.k;
import p135r2.m;
import p135r2.n;
import p135r2.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends k {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Object f30083T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final n f30084U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final String f30085V;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(int i8, String str, JSONObject jSONObject, n nVar, m mVar) {
        super(i8, str, mVar);
        String string = jSONObject != null ? jSONObject.toString() : null;
        this.f30083T = new Object();
        this.f30084U = nVar;
        this.f30085V = string;
    }

    @Override // p135r2.k
    public final void b(Object obj) {
        n nVar;
        synchronized (this.f30083T) {
            nVar = this.f30084U;
        }
        if (nVar != null) {
            nVar.a(obj);
        }
    }

    @Override // p135r2.k
    public final byte[] d() {
        String str = this.f30085V;
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            Log.wtf("Volley", r.a("Unsupported Encoding while trying to get the bytes of %s using %s", str, "utf-8"));
            return null;
        }
    }

    @Override // p135r2.k
    public final byte[] h() {
        return d();
    }

    @Override // p135r2.k
    public final C0041c m(i iVar) {
        try {
            return new C0041c(new JSONObject(new String(iVar.f29805b, AbstractC3164b.z("utf-8", iVar.f29806c))), AbstractC3164b.y(iVar));
        } catch (UnsupportedEncodingException e8) {
            return new C0041c(new h(e8));
        } catch (JSONException e9) {
            return new C0041c(new h(e9));
        }
    }
}
