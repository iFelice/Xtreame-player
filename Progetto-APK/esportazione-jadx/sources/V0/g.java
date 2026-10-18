package V0;

import android.opengl.GLES20;
import android.util.Log;
import p117p0.o;
import p117p0.p;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final float[] f7028i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f7029j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f7030k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p016c.g f7032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o f7033c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7034d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7036f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7037g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7038h;

    public static boolean b(f fVar) {
        p016c.g[] gVarArr = fVar.f7024a.f7023a;
        if (gVarArr.length != 1 || gVarArr[0].f10554H != 0) {
            return false;
        }
        p016c.g[] gVarArr2 = fVar.f7025b.f7023a;
        return gVarArr2.length == 1 && gVarArr2[0].f10554H == 0;
    }

    public final void a() {
        try {
            o oVar = new o("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f7033c = oVar;
            this.f7034d = GLES20.glGetUniformLocation(oVar.f28111a, "uMvpMatrix");
            this.f7035e = GLES20.glGetUniformLocation(this.f7033c.f28111a, "uTexMatrix");
            this.f7036f = this.f7033c.c("aPosition");
            this.f7037g = this.f7033c.c("aTexCoords");
            this.f7038h = GLES20.glGetUniformLocation(this.f7033c.f28111a, "uTexture");
        } catch (p e8) {
            Log.e("ProjectionRenderer", "Failed to initialize the program", e8);
        }
    }
}
