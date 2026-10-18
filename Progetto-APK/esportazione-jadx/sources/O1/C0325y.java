package O1;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import org.json.JSONObject;

/* JADX INFO: renamed from: O1.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0325y extends AbstractC0326z {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f5558d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0325y(int i8, String str, Boolean bool) {
        super(i8, str, bool);
        this.f5558d = 0;
    }

    @Override // O1.AbstractC0326z
    public int b(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                return ((L) obj).F(view) + ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).rightMargin;
            default:
                return ((L) obj).A(view) + ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).bottomMargin;
        }
    }

    @Override // O1.AbstractC0326z
    public int c(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                M m7 = (M) view.getLayoutParams();
                ((L) obj).getClass();
                return L.E(view) + ((ViewGroup.MarginLayoutParams) m7).leftMargin + ((ViewGroup.MarginLayoutParams) m7).rightMargin;
            default:
                M m8 = (M) view.getLayoutParams();
                ((L) obj).getClass();
                return L.D(view) + ((ViewGroup.MarginLayoutParams) m8).topMargin + ((ViewGroup.MarginLayoutParams) m8).bottomMargin;
        }
    }

    @Override // O1.AbstractC0326z
    public int d(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                return ((L) obj).C(view) - ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).leftMargin;
            default:
                return ((L) obj).G(view) - ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).topMargin;
        }
    }

    @Override // O1.AbstractC0326z
    public int e() {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                return ((L) obj).f5292n;
            default:
                return ((L) obj).f5293o;
        }
    }

    @Override // O1.AbstractC0326z
    public int f() {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                L l4 = (L) obj;
                return l4.f5292n - l4.K();
            default:
                L l8 = (L) obj;
                return l8.f5293o - l8.I();
        }
    }

    @Override // O1.AbstractC0326z
    public int g() {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                return ((L) obj).f5290l;
            default:
                return ((L) obj).f5291m;
        }
    }

    @Override // O1.AbstractC0326z
    public int h() {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                return ((L) obj).J();
            default:
                return ((L) obj).L();
        }
    }

    @Override // O1.AbstractC0326z
    public int i() {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                L l4 = (L) obj;
                return (l4.f5292n - l4.J()) - l4.K();
            default:
                L l8 = (L) obj;
                return (l8.f5293o - l8.L()) - l8.I();
        }
    }

    @Override // O1.AbstractC0326z
    public int k(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5561c;
        Object obj2 = this.f5560b;
        switch (i8) {
            case 0:
                Rect rect = (Rect) obj;
                ((L) obj2).P(view, rect);
                return rect.right;
            default:
                Rect rect2 = (Rect) obj;
                ((L) obj2).P(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // O1.AbstractC0326z
    public int l(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5561c;
        Object obj2 = this.f5560b;
        switch (i8) {
            case 0:
                Rect rect = (Rect) obj;
                ((L) obj2).P(view, rect);
                return rect.left;
            default:
                Rect rect2 = (Rect) obj;
                ((L) obj2).P(view, rect2);
                return rect2.top;
        }
    }

    @Override // O1.AbstractC0326z
    public void m(int i8) {
        int i9 = this.f5558d;
        Object obj = this.f5560b;
        switch (i9) {
            case 0:
                ((L) obj).W(i8);
                break;
            default:
                ((L) obj).X(i8);
                break;
        }
    }

    public int s(View view) {
        int i8 = this.f5558d;
        Object obj = this.f5560b;
        switch (i8) {
            case 0:
                M m7 = (M) view.getLayoutParams();
                ((L) obj).getClass();
                return L.D(view) + ((ViewGroup.MarginLayoutParams) m7).topMargin + ((ViewGroup.MarginLayoutParams) m7).bottomMargin;
            default:
                M m8 = (M) view.getLayoutParams();
                ((L) obj).getClass();
                return L.E(view) + ((ViewGroup.MarginLayoutParams) m8).leftMargin + ((ViewGroup.MarginLayoutParams) m8).rightMargin;
        }
    }

    public Object t(JSONObject jSONObject) {
        int i8 = this.f5558d;
        Object obj = this.f5561c;
        Object obj2 = this.f5560b;
        switch (i8) {
            case 0:
                return Boolean.valueOf(jSONObject.optBoolean((String) obj2, ((Boolean) obj).booleanValue()));
            case 1:
                return Integer.valueOf(jSONObject.optInt((String) obj2, ((Integer) obj).intValue()));
            case 2:
                return Long.valueOf(jSONObject.optLong((String) obj2, ((Long) obj).longValue()));
            case 3:
                return Float.valueOf((float) jSONObject.optDouble((String) obj2, ((Float) obj).floatValue()));
            default:
                return jSONObject.optString((String) obj2, (String) obj);
        }
    }

    public Object u(Bundle bundle) {
        int i8 = this.f5558d;
        Object obj = this.f5561c;
        Object obj2 = this.f5560b;
        switch (i8) {
            case 0:
                String str = (String) obj2;
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(str))) : (Boolean) obj;
            case 1:
                String str2 = (String) obj2;
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str2)) ? Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(str2))) : (Integer) obj;
            case 2:
                String str3 = (String) obj2;
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str3)) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(str3))) : (Long) obj;
            case 3:
                String str4 = (String) obj2;
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str4)) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(str4))) : (Float) obj;
            default:
                String str5 = (String) obj2;
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str5)) ? bundle.getString("com.google.android.gms.ads.flag.".concat(str5)) : (String) obj;
        }
    }

    public Object v(SharedPreferences sharedPreferences) {
        int i8 = this.f5558d;
        Object obj = this.f5561c;
        Object obj2 = this.f5560b;
        switch (i8) {
            case 0:
                return Boolean.valueOf(sharedPreferences.getBoolean((String) obj2, ((Boolean) obj).booleanValue()));
            case 1:
                return Integer.valueOf(sharedPreferences.getInt((String) obj2, ((Integer) obj).intValue()));
            case 2:
                return Long.valueOf(sharedPreferences.getLong((String) obj2, ((Long) obj).longValue()));
            case 3:
                return Float.valueOf(sharedPreferences.getFloat((String) obj2, ((Float) obj).floatValue()));
            default:
                return sharedPreferences.getString((String) obj2, (String) obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0325y(L l4, int i8) {
        super(l4);
        this.f5558d = i8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0325y(String str, int i8, Object obj) {
        super(1, str, obj);
        this.f5558d = i8;
    }
}
