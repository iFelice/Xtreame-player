package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import p086l.H;
import p093m.d;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f9002k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f9004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f9005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f9006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9008f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f9009g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f9010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f9011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f9012j;

    public IconCompat() {
        this.f9003a = -1;
        this.f9005c = null;
        this.f9006d = null;
        this.f9007e = 0;
        this.f9008f = 0;
        this.f9009g = null;
        this.f9010h = f9002k;
        this.f9011i = null;
    }

    public static Bitmap b(Bitmap bitmap, boolean z7) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f8 = iMin;
        float f9 = 0.5f * f8;
        float f10 = 0.9166667f * f9;
        if (z7) {
            float f11 = 0.010416667f * f8;
            paint.setColor(0);
            paint.setShadowLayer(f11, 0.0f, f8 * 0.020833334f, 1023410176);
            canvas.drawCircle(f9, f9, f10, paint);
            paint.setShadowLayer(f11, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f9, f9, f10, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f9, f9, f10, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat c(Resources resources, String str, int i8) {
        str.getClass();
        if (i8 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f9007e = i8;
        if (resources != null) {
            try {
                iconCompat.f9004b = resources.getResourceName(i8);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f9004b = str;
        }
        iconCompat.f9012j = str;
        return iconCompat;
    }

    public final Bitmap d() {
        int i8 = this.f9003a;
        if (i8 == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f9004b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i8 == 1) {
            return (Bitmap) this.f9004b;
        }
        if (i8 == 5) {
            return b((Bitmap) this.f9004b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public final int e() {
        int i8;
        int i9 = this.f9003a;
        if (i9 != -1 || (i8 = Build.VERSION.SDK_INT) < 23) {
            if (i9 == 2) {
                return this.f9007e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        Object obj = this.f9004b;
        if (i8 >= 28) {
            return d.f(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
        } catch (IllegalAccessException e8) {
            Log.e("IconCompat", "Unable to get icon resource", e8);
            return 0;
        } catch (NoSuchMethodException e9) {
            Log.e("IconCompat", "Unable to get icon resource", e9);
            return 0;
        } catch (InvocationTargetException e10) {
            Log.e("IconCompat", "Unable to get icon resource", e10);
            return 0;
        }
    }

    public final String f() {
        int i8;
        int i9 = this.f9003a;
        if (i9 != -1 || (i8 = Build.VERSION.SDK_INT) < 23) {
            if (i9 == 2) {
                String str = this.f9012j;
                return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f9004b).split(":", -1)[0] : this.f9012j;
            }
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        Object obj = this.f9004b;
        if (i8 >= 28) {
            return d.g(obj);
        }
        try {
            return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException e8) {
            Log.e("IconCompat", "Unable to get icon package", e8);
            return null;
        } catch (NoSuchMethodException e9) {
            Log.e("IconCompat", "Unable to get icon package", e9);
            return null;
        } catch (InvocationTargetException e10) {
            Log.e("IconCompat", "Unable to get icon package", e10);
            return null;
        }
    }

    public final int g() {
        int i8;
        int i9 = this.f9003a;
        if (i9 != -1 || (i8 = Build.VERSION.SDK_INT) < 23) {
            return i9;
        }
        Object obj = this.f9004b;
        if (i8 >= 28) {
            return d.j(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
        } catch (IllegalAccessException e8) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e8);
            return -1;
        } catch (NoSuchMethodException e9) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e9);
            return -1;
        } catch (InvocationTargetException e10) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e10);
            return -1;
        }
    }

    public final Uri h() {
        int i8;
        int i9 = this.f9003a;
        if (i9 != -1 || (i8 = Build.VERSION.SDK_INT) < 23) {
            if (i9 == 4 || i9 == 6) {
                return Uri.parse((String) this.f9004b);
            }
            throw new IllegalStateException("called getUri() on " + this);
        }
        Object obj = this.f9004b;
        if (i8 >= 28) {
            return d.k(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException e8) {
            Log.e("IconCompat", "Unable to get icon uri", e8);
            return null;
        } catch (NoSuchMethodException e9) {
            Log.e("IconCompat", "Unable to get icon uri", e9);
            return null;
        } catch (InvocationTargetException e10) {
            Log.e("IconCompat", "Unable to get icon uri", e10);
            return null;
        }
    }

    public final InputStream i(Context context) {
        Uri uriH = h();
        String scheme = uriH.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriH);
            } catch (Exception e8) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriH, e8);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f9004b));
        } catch (FileNotFoundException e9) {
            Log.w("IconCompat", "Unable to load image from path: " + uriH, e9);
            return null;
        }
    }

    public final Icon j(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return H.w(this, context);
        }
        throw new UnsupportedOperationException("This method is only supported on API level 23+");
    }

    public final String toString() {
        String str;
        if (this.f9003a == -1) {
            return String.valueOf(this.f9004b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f9003a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f9003a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f9004b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f9004b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f9012j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(e())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f9007e);
                if (this.f9008f != 0) {
                    sb.append(" off=");
                    sb.append(this.f9008f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f9004b);
                break;
        }
        if (this.f9009g != null) {
            sb.append(" tint=");
            sb.append(this.f9009g);
        }
        if (this.f9010h != f9002k) {
            sb.append(" mode=");
            sb.append(this.f9010h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i8) {
        this.f9005c = null;
        this.f9006d = null;
        this.f9007e = 0;
        this.f9008f = 0;
        this.f9009g = null;
        this.f9010h = f9002k;
        this.f9011i = null;
        this.f9003a = i8;
    }
}
