package N;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class L {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static C0259h b(View view, C0259h c0259h) {
        ContentInfo contentInfoX = c0259h.f4896a.x();
        Objects.requireNonNull(contentInfoX);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoX);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoX ? c0259h : new C0259h(new p039f.S(contentInfoPerformReceiveContent));
    }
}
