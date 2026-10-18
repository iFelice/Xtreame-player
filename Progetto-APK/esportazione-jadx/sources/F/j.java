package F;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f2979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration f2980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2981c;

    public j(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f2979a = colorStateList;
        this.f2980b = configuration;
        this.f2981c = theme == null ? 0 : theme.hashCode();
    }
}
