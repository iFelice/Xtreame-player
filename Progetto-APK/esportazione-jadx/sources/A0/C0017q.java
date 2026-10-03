package A0;

import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0017q implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0023x f196b;

    public /* synthetic */ C0017q(C0023x c0023x, int i8) {
        this.f195a = i8;
        this.f196b = c0023x;
    }

    @Override // A0.g0
    public final void run() throws o0 {
        int size;
        int i8 = this.f195a;
        int i9 = 0;
        C0023x c0023x = this.f196b;
        switch (i8) {
            case 0:
                c0023x.b();
                return;
            case 1:
                EGLDisplay eGLDisplay = c0023x.f227e;
                F.i iVar = c0023x.f225c;
                boolean z7 = c0023x.f226d;
                try {
                    try {
                        c0023x.f228f.a();
                        int i10 = 0;
                        while (true) {
                            ArrayList arrayList = c0023x.f234l;
                            if (i10 >= arrayList.size()) {
                                c0023x.f233k.release();
                            } else {
                                ((K) arrayList.get(i10)).release();
                                i10++;
                            }
                            if (!z7) {
                                return;
                            }
                            while (true) {
                                try {
                                    if (i9 >= size) {
                                        return;
                                    }
                                } catch (p117p0.p e8) {
                                    return;
                                }
                            }
                        }
                    } finally {
                        if (z7) {
                            while (i9 < ((List) iVar.f2978I).size()) {
                                try {
                                    AbstractC3164b.p((EGLContext) ((List) iVar.f2978I).get(i9), eGLDisplay);
                                    i9++;
                                } catch (p117p0.p e9) {
                                    p117p0.x.d("DefaultFrameProcessor", "Error releasing GL objects", e9);
                                }
                            }
                        }
                    }
                } catch (Exception e10) {
                    p117p0.x.d("DefaultFrameProcessor", "Error releasing shader program", e10);
                }
                break;
            case 2:
                c0023x.getClass();
                String str = p117p0.M.f28050a;
                U u7 = c0023x.f243u;
                boolean z8 = u7.f89j == 0;
                c0[] c0VarArr = u7.f88i;
                long j8 = z8 ? -9223372036854775807L : c0VarArr[0].f133b;
                D d6 = c0023x.f233k;
                d6.f53y = j8;
                int i11 = 0;
                while (true) {
                    ConcurrentLinkedQueue concurrentLinkedQueue = d6.f39k;
                    if (i11 >= concurrentLinkedQueue.size()) {
                        if (u7.f89j == 0) {
                            return;
                        }
                        c0 c0Var = c0VarArr[0];
                        u7.f114c.i(c0Var.f132a, c0Var.f133b);
                        if (u7.f89j > 1) {
                            c0 c0Var2 = c0VarArr[1];
                            u7.f114c.i(c0Var2.f132a, c0Var2.f133b);
                            return;
                        }
                        return;
                    }
                    d6.f47s.A(((c0) concurrentLinkedQueue.remove()).f132a);
                    i11++;
                }
                break;
            default:
                int i12 = C0023x.f223x;
                c0023x.b();
                return;
        }
    }
}
