package p117p0;

import android.content.Context;
import android.opengl.GLES20;
import com.google.android.gms.internal.measurement.H1;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3175m[] f28112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n[] f28113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f28114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f28115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f28116f;

    public o(String str, String str2) throws p {
        byte[] bArr;
        byte[] bArr2;
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f28111a = iGlCreateProgram;
        AbstractC3164b.e();
        a(iGlCreateProgram, 35633, str);
        a(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int i8 = 0;
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        int i9 = 1;
        AbstractC3164b.f("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram), iArr[0] == 1);
        GLES20.glUseProgram(iGlCreateProgram);
        this.f28114d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f28112b = new C3175m[iArr2[0]];
        int i10 = 0;
        while (i10 < iArr2[0]) {
            int i11 = this.f28111a;
            int[] iArr3 = new int[i9];
            GLES20.glGetProgramiv(i11, 35722, iArr3, 0);
            int i12 = iArr3[0];
            byte[] bArr3 = new byte[i12];
            GLES20.glGetActiveAttrib(i11, i10, i12, new int[i9], 0, new int[i9], 0, new int[i9], 0, bArr3, 0);
            int i13 = 0;
            while (true) {
                if (i13 >= i12) {
                    bArr2 = bArr3;
                    i13 = i12;
                    break;
                } else {
                    bArr2 = bArr3;
                    if (bArr2[i13] == 0) {
                        break;
                    }
                    i13++;
                    bArr3 = bArr2;
                }
            }
            String str3 = new String(bArr2, 0, i13);
            C3175m c3175m = new C3175m(str3, GLES20.glGetAttribLocation(i11, str3));
            this.f28112b[i10] = c3175m;
            this.f28114d.put(str3, c3175m);
            i10++;
            i9 = 1;
        }
        this.f28115e = new HashMap();
        int[] iArr4 = new int[1];
        GLES20.glGetProgramiv(this.f28111a, 35718, iArr4, 0);
        this.f28113c = new n[iArr4[0]];
        for (int i14 = 0; i14 < iArr4[i8]; i14++) {
            int i15 = this.f28111a;
            int[] iArr5 = new int[1];
            GLES20.glGetProgramiv(i15, 35719, iArr5, i8);
            int[] iArr6 = new int[1];
            int i16 = iArr5[i8];
            byte[] bArr4 = new byte[i16];
            GLES20.glGetActiveUniform(i15, i14, i16, new int[1], 0, new int[1], 0, iArr6, 0, bArr4, 0);
            int i17 = 0;
            while (true) {
                if (i17 >= i16) {
                    bArr = bArr4;
                    i17 = i16;
                    break;
                } else {
                    bArr = bArr4;
                    if (bArr[i17] == 0) {
                        break;
                    }
                    i17++;
                    bArr4 = bArr;
                }
            }
            i8 = 0;
            String str4 = new String(bArr, 0, i17);
            n nVar = new n(str4, GLES20.glGetUniformLocation(i15, str4), iArr6[0]);
            this.f28113c[i14] = nVar;
            this.f28115e.put(str4, nVar);
        }
        AbstractC3164b.e();
    }

    public static void a(int i8, int i9, String str) throws p {
        int iGlCreateShader = GLES20.glCreateShader(i9);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        AbstractC3164b.f(GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: \n" + str, iArr[0] == 1);
        GLES20.glAttachShader(i8, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        AbstractC3164b.e();
    }

    public final void b() {
        for (C3175m c3175m : this.f28112b) {
            FloatBuffer floatBuffer = c3175m.f28102b;
            H1.g(floatBuffer, "call setBuffer before bind");
            GLES20.glBindBuffer(34962, 0);
            GLES20.glVertexAttribPointer(c3175m.f28101a, c3175m.f28103c, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(c3175m.f28101a);
            AbstractC3164b.e();
        }
        for (n nVar : this.f28113c) {
            boolean z7 = this.f28116f;
            int[] iArr = nVar.f28107d;
            int i8 = nVar.f28104a;
            int i9 = nVar.f28105b;
            if (i9 != 5124) {
                float[] fArr = nVar.f28106c;
                if (i9 == 5126) {
                    GLES20.glUniform1fv(i8, 1, fArr, 0);
                    AbstractC3164b.e();
                } else if (i9 != 35678 && i9 != 35815 && i9 != 36198) {
                    switch (i9) {
                        case 35664:
                            GLES20.glUniform2fv(i8, 1, fArr, 0);
                            AbstractC3164b.e();
                            break;
                        case 35665:
                            GLES20.glUniform3fv(i8, 1, fArr, 0);
                            AbstractC3164b.e();
                            break;
                        case 35666:
                            GLES20.glUniform4fv(i8, 1, fArr, 0);
                            AbstractC3164b.e();
                            break;
                        case 35667:
                            GLES20.glUniform2iv(i8, 1, iArr, 0);
                            AbstractC3164b.e();
                            break;
                        case 35668:
                            GLES20.glUniform3iv(i8, 1, iArr, 0);
                            AbstractC3164b.e();
                            break;
                        case 35669:
                            GLES20.glUniform4iv(i8, 1, iArr, 0);
                            AbstractC3164b.e();
                            break;
                        default:
                            switch (i9) {
                                case 35675:
                                    GLES20.glUniformMatrix3fv(i8, 1, false, fArr, 0);
                                    AbstractC3164b.e();
                                    break;
                                case 35676:
                                    GLES20.glUniformMatrix4fv(i8, 1, false, fArr, 0);
                                    AbstractC3164b.e();
                                    break;
                                default:
                                    throw new IllegalStateException(r.f("Unexpected uniform type: ", i9));
                            }
                            break;
                    }
                } else {
                    if (nVar.f28108e == 0) {
                        throw new IllegalStateException("No call to setSamplerTexId() before bind.");
                    }
                    GLES20.glActiveTexture(nVar.f28109f + 33984);
                    AbstractC3164b.e();
                    AbstractC3164b.c(i9 == 35678 ? 3553 : 36197, nVar.f28108e, (i9 == 35678 || !z7) ? 9729 : 9728);
                    if (i9 == 35678) {
                        if (nVar.f28110g == 9987) {
                            GLES20.glGenerateMipmap(3553);
                            AbstractC3164b.e();
                        }
                        GLES20.glTexParameteri(3553, 10241, nVar.f28110g);
                        AbstractC3164b.e();
                    }
                    GLES20.glUniform1i(i8, nVar.f28109f);
                    AbstractC3164b.e();
                }
            } else {
                GLES20.glUniform1iv(i8, 1, iArr, 0);
                AbstractC3164b.e();
            }
        }
    }

    public final int c(String str) {
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f28111a, str);
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        AbstractC3164b.e();
        return iGlGetAttribLocation;
    }

    public final void d(float[] fArr) {
        C3175m c3175m = (C3175m) this.f28114d.get("aFramePosition");
        c3175m.getClass();
        c3175m.f28102b = AbstractC3164b.l(fArr);
        c3175m.f28103c = 4;
    }

    public final void e(String str, float[] fArr) {
        n nVar = (n) this.f28115e.get(str);
        nVar.getClass();
        System.arraycopy(fArr, 0, nVar.f28106c, 0, fArr.length);
    }

    public final void f(float[] fArr) {
        n nVar = (n) this.f28115e.get("uRgbMatrix");
        if (nVar == null) {
            return;
        }
        System.arraycopy(fArr, 0, nVar.f28106c, 0, fArr.length);
    }

    public final void g(int i8, String str) {
        n nVar = (n) this.f28115e.get(str);
        nVar.getClass();
        nVar.f28107d[0] = i8;
    }

    public final void h(int i8, int i9) {
        n nVar = (n) this.f28115e.get("uTexSampler");
        nVar.getClass();
        nVar.f28108e = i8;
        nVar.f28109f = 0;
        nVar.f28110g = i9;
    }

    public final void i() {
        GLES20.glUseProgram(this.f28111a);
        AbstractC3164b.e();
    }

    public o(Context context, String str, String str2) {
        this(M.Q(context, str), M.Q(context, str2));
    }
}
