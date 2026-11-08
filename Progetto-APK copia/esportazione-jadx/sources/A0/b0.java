package A0;

import android.opengl.GLES20;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import java.util.Iterator;
import p094m0.C3138v;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f127d;

    public b0(boolean z7, int i8) {
        this.f126c = i8;
        this.f127d = z7;
        this.f124a = new ArrayDeque(i8);
        this.f125b = new ArrayDeque(i8);
    }

    public final void a(F.i iVar, int i8, int i9) {
        int i10;
        ArrayDeque arrayDeque = this.f124a;
        H1.i(arrayDeque.isEmpty());
        H1.i(this.f125b.isEmpty());
        for (int i11 = 0; i11 < this.f126c; i11++) {
            if (this.f127d) {
                AbstractC3164b.b(i8, i9);
                int[] iArr = new int[1];
                GLES20.glGenTextures(1, iArr, 0);
                AbstractC3164b.e();
                i10 = iArr[0];
                AbstractC3164b.c(3553, i10, 9729);
                GLES20.glTexImage2D(3553, 0, 34842, i8, i9, 0, 6408, 5131, null);
                AbstractC3164b.e();
            } else {
                AbstractC3164b.b(i8, i9);
                int[] iArr2 = new int[1];
                GLES20.glGenTextures(1, iArr2, 0);
                AbstractC3164b.e();
                i10 = iArr2[0];
                AbstractC3164b.c(3553, i10, 9729);
                GLES20.glTexImage2D(3553, 0, 6408, i8, i9, 0, 6408, 5121, null);
                AbstractC3164b.e();
            }
            iVar.getClass();
            int[] iArr3 = new int[1];
            GLES20.glGenFramebuffers(1, iArr3, 0);
            AbstractC3164b.e();
            GLES20.glBindFramebuffer(36160, iArr3[0]);
            AbstractC3164b.e();
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, i10, 0);
            AbstractC3164b.e();
            arrayDeque.add(new C3138v(i10, iArr3[0], i8, i9));
        }
    }

    public final void b() {
        Iterator itC = c();
        while (itC.hasNext()) {
            ((C3138v) itC.next()).a();
        }
        this.f124a.clear();
        this.f125b.clear();
    }

    public final Iterator c() {
        Iterable[] iterableArr = {this.f124a, this.f125b};
        for (int i8 = 0; i8 < 2; i8++) {
            iterableArr[i8].getClass();
        }
        return new D.z(iterableArr).iterator();
    }

    public final C3138v d() {
        ArrayDeque arrayDeque = this.f124a;
        if (arrayDeque.isEmpty()) {
            throw new IllegalStateException("Textures are all in use. Please release in-use textures before calling useTexture.");
        }
        C3138v c3138v = (C3138v) arrayDeque.remove();
        this.f125b.add(c3138v);
        return c3138v;
    }
}
