package C2;

import java.io.File;

/* JADX INFO: renamed from: C2.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0092h implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1389b;

    public /* synthetic */ C0092h(Object obj, int i8) {
        this.f1388a = i8;
        this.f1389b = obj;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        switch (this.f1388a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        int i10 = this.f1388a;
        Object obj2 = this.f1389b;
        switch (i10) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new B(new O2.d(bArr), new C0090f(bArr, (InterfaceC0089e) obj2));
            case 1:
                return new B(new O2.d(obj), new C0095k(0, obj.toString(), (C0091g) obj2));
            default:
                File file = (File) obj;
                return new B(new O2.d(file), new C0095k(1, file, (s) obj2));
        }
    }
}
