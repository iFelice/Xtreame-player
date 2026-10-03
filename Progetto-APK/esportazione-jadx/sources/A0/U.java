package A0;

import android.content.Context;
import android.opengl.GLES20;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.ArrayDeque;
import p094m0.C3138v;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class U extends AbstractC0001a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p117p0.o f87h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c0[] f88i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f89j;

    public U(Context context, boolean z7) throws o0 {
        super(z7, 2);
        try {
            p117p0.o oVar = new p117p0.o(context, "shaders/vertex_shader_transformation_es2.glsl", "shaders/fragment_shader_transformation_es2.glsl");
            this.f87h = oVar;
            float[] fArrJ = AbstractC3164b.j();
            oVar.e("uTexTransformationMatrix", fArrJ);
            oVar.e("uTransformationMatrix", fArrJ);
            oVar.e("uRgbMatrix", fArrJ);
            oVar.d(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f});
            this.f88i = new c0[2];
        } catch (IOException | p117p0.p e8) {
            throw o0.a(e8);
        }
    }

    @Override // A0.AbstractC0001a, A0.K
    public final void a() {
        for (int i8 = 0; i8 < this.f89j; i8++) {
            super.c(this.f88i[i8].f132a);
        }
        this.f89j = 0;
        super.a();
    }

    @Override // A0.AbstractC0001a, A0.K
    public final void b(F.i iVar, C3138v c3138v, long j8) {
        H1.i(this.f89j < 2);
        super.b(iVar, c3138v, j8);
        int i8 = this.f89j;
        this.f89j = i8 + 1;
        ArrayDeque arrayDeque = this.f112a.f125b;
        C3138v c3138v2 = arrayDeque.isEmpty() ? null : (C3138v) arrayDeque.getLast();
        c3138v2.getClass();
        this.f88i[i8] = new c0(c3138v2, j8);
    }

    @Override // A0.AbstractC0001a, A0.K
    public final void flush() {
        this.f89j = 0;
        super.flush();
    }

    @Override // A0.AbstractC0001a
    public final p117p0.F g(int i8, int i9) {
        return new p117p0.F(i8, i9);
    }

    @Override // A0.AbstractC0001a
    public final void h(int i8, long j8) throws o0 {
        p117p0.o oVar = this.f87h;
        try {
            oVar.i();
            p117p0.n nVar = (p117p0.n) oVar.f28115e.get("uTexSampler");
            nVar.getClass();
            nVar.f28108e = i8;
            nVar.f28109f = 0;
            oVar.b();
            GLES20.glDrawArrays(5, 0, 4);
        } catch (p117p0.p e8) {
            throw o0.a(e8);
        }
    }

    public final void j(long j8) {
        int i8 = this.f89j;
        if (i8 >= 2) {
            c0[] c0VarArr = this.f88i;
            c0 c0Var = c0VarArr[1];
            if (j8 < c0Var.f133b) {
                return;
            }
            c0 c0Var2 = c0VarArr[0];
            c0VarArr[0] = c0Var;
            this.f89j = i8 - 1;
            super.c(c0Var2.f132a);
        }
    }

    @Override // A0.K
    public final void release() throws o0 {
        try {
            this.f112a.b();
            try {
                GLES20.glDeleteProgram(this.f87h.f28111a);
                AbstractC3164b.e();
            } catch (p117p0.p e8) {
                throw new o0((Throwable) e8);
            }
        } catch (p117p0.p e9) {
            throw new o0((Throwable) e9);
        }
    }

    @Override // A0.AbstractC0001a, A0.K
    public final void c(C3138v c3138v) {
    }
}
