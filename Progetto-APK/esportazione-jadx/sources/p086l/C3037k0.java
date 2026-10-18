package p086l;

import android.text.StaticLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: l.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3037k0 extends C3035j0 {
    @Override // p086l.C3035j0, p086l.C3039l0
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }

    @Override // p086l.C3039l0
    public boolean b(TextView textView) {
        return textView.isHorizontallyScrollable();
    }
}
