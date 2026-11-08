package C2;

import java.io.File;

/* JADX INFO: renamed from: C2.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0094j implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1392a;

    public /* synthetic */ C0094j(int i8) {
        this.f1392a = i8;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        switch (this.f1392a) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        switch (this.f1392a) {
            case 0:
                File file = (File) obj;
                return new B(new O2.d(file), new C0093i(file, 0));
            default:
                return null;
        }
    }
}
