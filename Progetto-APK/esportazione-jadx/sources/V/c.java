package V;

import android.text.Editable;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f6996a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile c f6997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f6998c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f6998c;
        return cls != null ? new U.d(cls, charSequence) : super.newEditable(charSequence);
    }
}
