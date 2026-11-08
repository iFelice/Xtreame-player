package p094m0;

import android.opengl.GLES20;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: m0.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3138v {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C3138v f27055e = new C3138v(-1, -1, -1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27059d;

    public C3138v(int i8, int i9, int i10, int i11) {
        this.f27056a = i8;
        this.f27057b = i9;
        this.f27058c = i10;
        this.f27059d = i11;
    }

    public final void a() {
        int i8 = this.f27056a;
        if (i8 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i8}, 0);
            AbstractC3164b.e();
        }
        int i9 = this.f27057b;
        if (i9 != -1) {
            GLES20.glDeleteFramebuffers(1, new int[]{i9}, 0);
            AbstractC3164b.e();
        }
    }
}
