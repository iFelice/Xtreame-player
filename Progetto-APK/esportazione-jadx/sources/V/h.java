package V;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class h extends U4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final g f7007G;

    public h(TextView textView) {
        super(10);
        this.f7007G = new g(textView);
    }

    @Override // U4.b
    public final InputFilter[] W(InputFilter[] inputFilterArr) {
        Object obj = U.a.f6622a;
        return inputFilterArr;
    }

    @Override // U4.b
    public final boolean d0() {
        return this.f7007G.f7006I;
    }

    @Override // U4.b
    public final void f0(boolean z7) {
        Object obj = U.a.f6622a;
    }

    @Override // U4.b
    public final void g0(boolean z7) {
        Object obj = U.a.f6622a;
        this.f7007G.f7006I = z7;
    }

    @Override // U4.b
    public final TransformationMethod j0(TransformationMethod transformationMethod) {
        Object obj = U.a.f6622a;
        return transformationMethod;
    }
}
