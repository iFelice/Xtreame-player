package p032e0;

import C6.a;
import D0.U;
import D6.h;
import D6.l;
import F2.G;
import U1.g;
import android.content.Context;
import android.os.Build;
import java.io.File;
import p040f0.b;
import p079k.AbstractC3012d;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class C extends h implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24716G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f24717H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C(Object obj, int i8) {
        super(0);
        this.f24716G = i8;
        this.f24717H = obj;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    @Override // C6.a
    public final Object invoke() {
        g gVar;
        int i8 = this.f24716G;
        Object obj = this.f24717H;
        switch (i8) {
            case 0:
                L l4 = (L) obj;
                q0.h(l4, "<this>");
                G g8 = new G(1);
                K kC = l4.c();
                b bVarA = l4 instanceof InterfaceC2978f ? ((InterfaceC2978f) l4).a() : p040f0.a.f25132b;
                q0.h(kC, "store");
                q0.h(bVarA, "defaultCreationExtras");
                return (E) new u(kC, g8, bVarA).D(l.a(E.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
            case 1:
                return ((AbstractC3012d) obj).d();
            default:
                int i9 = 15;
                Object obj2 = null;
                if (Build.VERSION.SDK_INT >= 23) {
                    U1.h hVar = (U1.h) obj;
                    if (hVar.f6919H == null || !hVar.f6921J) {
                        U1.h hVar2 = (U1.h) obj;
                        gVar = new g(hVar2.f6918G, hVar2.f6919H, new U(obj2, i9), hVar2.f6920I, hVar2.f6922K);
                    } else {
                        Context context = hVar.f6918G;
                        q0.h(context, "context");
                        File noBackupFilesDir = context.getNoBackupFilesDir();
                        q0.g(noBackupFilesDir, "context.noBackupFilesDir");
                        gVar = new g(hVar.f6918G, new File(noBackupFilesDir, hVar.f6919H).getAbsolutePath(), new U(obj2, i9), hVar.f6920I, hVar.f6922K);
                    }
                } else {
                    U1.h hVar3 = (U1.h) obj;
                    gVar = new g(hVar3.f6918G, hVar3.f6919H, new U(obj2, i9), hVar3.f6920I, hVar3.f6922K);
                }
                gVar.setWriteAheadLoggingEnabled(((U1.h) obj).f6924M);
                return gVar;
        }
    }
}
