package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f31556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f31557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f31559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31560e;

    public g(Context context, XmlResourceParser xmlResourceParser) {
        this.f31556a = Float.NaN;
        this.f31557b = Float.NaN;
        this.f31558c = Float.NaN;
        this.f31559d = Float.NaN;
        this.f31560e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), r.f31696j);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f31560e);
                this.f31560e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new o().a(context, resourceId);
                }
            } else if (index == 1) {
                this.f31559d = typedArrayObtainStyledAttributes.getDimension(index, this.f31559d);
            } else if (index == 2) {
                this.f31557b = typedArrayObtainStyledAttributes.getDimension(index, this.f31557b);
            } else if (index == 3) {
                this.f31558c = typedArrayObtainStyledAttributes.getDimension(index, this.f31558c);
            } else if (index == 4) {
                this.f31556a = typedArrayObtainStyledAttributes.getDimension(index, this.f31556a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
