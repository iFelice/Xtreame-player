package J;

import D0.AbstractC0134y;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocaleList f4057a;

    public j(Object obj) {
        this.f4057a = AbstractC0134y.i(obj);
    }

    @Override // J.i
    public final String a() {
        return this.f4057a.toLanguageTags();
    }

    @Override // J.i
    public final Object b() {
        return this.f4057a;
    }

    public final boolean equals(Object obj) {
        return this.f4057a.equals(((i) obj).b());
    }

    @Override // J.i
    public final Locale get(int i8) {
        return this.f4057a.get(i8);
    }

    public final int hashCode() {
        return this.f4057a.hashCode();
    }

    @Override // J.i
    public final boolean isEmpty() {
        return this.f4057a.isEmpty();
    }

    @Override // J.i
    public final int size() {
        return this.f4057a.size();
    }

    public final String toString() {
        return this.f4057a.toString();
    }
}
