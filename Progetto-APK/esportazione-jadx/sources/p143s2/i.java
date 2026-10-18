package p143s2;

import B0.C0041c;
import java.io.UnsupportedEncodingException;
import p117p0.AbstractC3164b;
import p135r2.k;
import p135r2.n;
import pe.hf.black20.util.c;

/* JADX INFO: loaded from: classes.dex */
public final class i extends k {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Object f30087T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final n f30088U;

    public i(String str, c cVar, c cVar2) {
        super(0, str, cVar2);
        this.f30087T = new Object();
        this.f30088U = cVar;
    }

    @Override // p135r2.k
    public final void b(Object obj) {
        n nVar;
        String str = (String) obj;
        synchronized (this.f30087T) {
            nVar = this.f30088U;
        }
        if (nVar != null) {
            nVar.a(str);
        }
    }

    @Override // p135r2.k
    public final C0041c m(p135r2.i iVar) {
        String str;
        byte[] bArr = iVar.f29805b;
        try {
            str = new String(bArr, AbstractC3164b.z("ISO-8859-1", iVar.f29806c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(bArr);
        }
        return new C0041c(str, AbstractC3164b.y(iVar));
    }
}
