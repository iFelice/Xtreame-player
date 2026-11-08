package p071j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ContextWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Configuration f25596f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f25597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources.Theme f25598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f25599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Configuration f25600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f25601e;

    public d(Context context, int i8) {
        super(context);
        this.f25597a = i8;
    }

    public final void a(Configuration configuration) {
        if (this.f25601e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f25600d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f25600d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f25598b == null) {
            this.f25598b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f25598b.setTo(theme);
            }
        }
        this.f25598b.applyStyle(this.f25597a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f25601e == null) {
            Configuration configuration = this.f25600d;
            if (configuration == null) {
                this.f25601e = super.getResources();
            } else {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (f25596f == null) {
                        Configuration configuration2 = new Configuration();
                        configuration2.fontScale = 0.0f;
                        f25596f = configuration2;
                    }
                    if (configuration.equals(f25596f)) {
                        this.f25601e = super.getResources();
                    }
                }
                this.f25601e = createConfigurationContext(this.f25600d).getResources();
            }
        }
        return this.f25601e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f25599c == null) {
            this.f25599c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f25599c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f25598b;
        if (theme != null) {
            return theme;
        }
        if (this.f25597a == 0) {
            this.f25597a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f25598b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i8) {
        if (this.f25597a != i8) {
            this.f25597a = i8;
            b();
        }
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f25598b = theme;
    }
}
