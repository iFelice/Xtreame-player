package p021c4;

import android.content.SharedPreferences;
import com.bumptech.glide.c;

/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f11079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f11081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Z f11082e;

    public Y(Z z7, String str, boolean z8) {
        this.f11082e = z7;
        c.e(str);
        this.f11078a = str;
        this.f11079b = z8;
    }

    public final void a(boolean z7) {
        SharedPreferences.Editor editorEdit = this.f11082e.s().edit();
        editorEdit.putBoolean(this.f11078a, z7);
        editorEdit.apply();
        this.f11081d = z7;
    }

    public final boolean b() {
        if (!this.f11080c) {
            this.f11080c = true;
            this.f11081d = this.f11082e.s().getBoolean(this.f11078a, this.f11079b);
        }
        return this.f11081d;
    }
}
