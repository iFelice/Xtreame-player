package D1;

import O1.c0;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0151p extends c0 {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final /* synthetic */ int f2197e0 = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final TextView f2198a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final TextView f2199b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final ImageView f2200c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final /* synthetic */ C0156v f2201d0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0151p(C0156v c0156v, View view) {
        super(view);
        this.f2201d0 = c0156v;
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f2198a0 = (TextView) view.findViewById(R.id.exo_main_text);
        this.f2199b0 = (TextView) view.findViewById(R.id.exo_sub_text);
        this.f2200c0 = (ImageView) view.findViewById(R.id.exo_icon);
        view.setOnClickListener(new ViewOnClickListenerC0144i(this, 1));
    }
}
