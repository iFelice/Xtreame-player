package X1;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: loaded from: classes.dex */
public final class F implements G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowId f7549a;

    public F(View view) {
        this.f7549a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof F) && ((F) obj).f7549a.equals(this.f7549a);
    }

    public final int hashCode() {
        return this.f7549a.hashCode();
    }
}
