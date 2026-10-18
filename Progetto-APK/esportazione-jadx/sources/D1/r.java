package D1;

import O1.c0;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class r extends c0 {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final TextView f2207a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final View f2208b0;

    public r(View view) {
        super(view);
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f2207a0 = (TextView) view.findViewById(R.id.exo_text);
        this.f2208b0 = view.findViewById(R.id.exo_check);
    }
}
