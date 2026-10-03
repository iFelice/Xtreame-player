package p086l;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* JADX INFO: renamed from: l.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3064y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f26421a;

    static {
        Field declaredField = null;
        try {
            declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e8) {
            e8.printStackTrace();
        }
        f26421a = declaredField;
    }
}
