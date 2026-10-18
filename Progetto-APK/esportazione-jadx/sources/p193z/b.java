package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import p156u.h;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f31465a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f31468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f31469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f31470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f31471g;

    public b(b bVar, Object obj) {
        bVar.getClass();
        this.f31466b = bVar.f31466b;
        b(obj);
    }

    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap map) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), r.f31690d);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object objValueOf = null;
        int i8 = 0;
        boolean z7 = false;
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 10) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z7 = true;
            } else if (index == 1) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i8 = 6;
            } else if (index == 3) {
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i8 = 3;
            } else if (index == 2) {
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i8 = 4;
            } else {
                if (index == 7) {
                    objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                    i8 = 2;
                } else if (index == 6) {
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                    i8 = 1;
                } else if (index == 9) {
                    objValueOf = typedArrayObtainStyledAttributes.getString(index);
                    i8 = 5;
                } else if (index == 8) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    objValueOf = Integer.valueOf(resourceId);
                    i8 = 8;
                }
                i8 = 7;
            }
        }
        if (string != null && objValueOf != null) {
            b bVar = new b();
            bVar.f31466b = i8;
            bVar.f31465a = z7;
            bVar.b(objValueOf);
            map.put(string, bVar);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (h.b(this.f31466b)) {
            case 0:
            case 7:
                this.f31467c = ((Integer) obj).intValue();
                break;
            case 1:
                this.f31468d = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f31471g = ((Integer) obj).intValue();
                break;
            case 4:
                this.f31469e = (String) obj;
                break;
            case 5:
                this.f31470f = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f31468d = ((Float) obj).floatValue();
                break;
        }
    }
}
