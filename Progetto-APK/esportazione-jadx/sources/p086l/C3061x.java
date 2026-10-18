package p086l;

import G.a;
import U2.h;
import U2.l;
import Z3.C0427i;
import Z3.C0430l;
import Z3.C0435q;
import Z3.C0438u;
import Z3.W;
import Z3.X;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.gms.internal.measurement.Q1;
import com.google.protobuf.U2;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p117p0.M;
import p143s2.i;
import p149t0.n;
import p149t0.q;
import p149t0.r;
import pe.hf.black20.R;
import pe.hf.black20.util.c;
import pe.hf.black20.util.d;

/* JADX INFO: renamed from: l.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3061x implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f26410G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f26411H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f26412I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f26413J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f26414K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Object f26415L;

    public C3061x(int i8) {
        if (i8 != 3) {
            this.f26410G = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
            this.f26411H = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
            this.f26412I = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
            this.f26413J = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
            this.f26414K = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
            this.f26415L = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
        }
    }

    public static r a(DataInputStream dataInputStream) throws IOException {
        int i8 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < i8; i9++) {
            String utf = dataInputStream.readUTF();
            int i10 = dataInputStream.readInt();
            if (i10 < 0) {
                throw new IOException(p000a.r.f("Invalid value size: ", i10));
            }
            int iMin = Math.min(i10, 10485760);
            byte[] bArrCopyOf = M.f28051b;
            int i11 = 0;
            while (i11 != i10) {
                int i12 = i11 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i12);
                dataInputStream.readFully(bArrCopyOf, i11, iMin);
                iMin = Math.min(i10 - i12, 10485760);
                i11 = i12;
            }
            map.put(utf, bArrCopyOf);
        }
        return new r(map);
    }

    public static void b(r rVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setEntrySet = rVar.f30238b.entrySet();
        dataOutputStream.writeInt(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public static boolean d(int[] iArr, int i8) {
        for (int i9 : iArr) {
            if (i9 == i8) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList f(Context context, int i8) {
        int iC = c1.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{c1.f26226b, c1.f26228d, c1.f26227c, c1.f26230f}, new int[]{c1.b(context, R.attr.colorButtonNormal), a.c(iC, i8), a.c(iC, i8), i8});
    }

    public static LayerDrawable i(V0 v5, Context context, int i8) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i8);
        Drawable drawableF = v5.f(context, R.drawable.abc_star_black_48dp);
        Drawable drawableF2 = v5.f(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableF instanceof BitmapDrawable) && drawableF.getIntrinsicWidth() == dimensionPixelSize && drawableF.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableF;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableF.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableF2 instanceof BitmapDrawable) && drawableF2.getIntrinsicWidth() == dimensionPixelSize && drawableF2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableF2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableF2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void n(Drawable drawable, int i8, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterH;
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = C3063y.f26418b;
        }
        PorterDuff.Mode mode2 = C3063y.f26418b;
        synchronized (C3063y.class) {
            porterDuffColorFilterH = V0.h(i8, mode);
        }
        drawableMutate.setColorFilter(porterDuffColorFilterH);
    }

    public final void c(String str, String str2) {
        Map map = (Map) this.f26415L;
        if (map == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map.put(str, str2);
    }

    public final h e() {
        String strA = ((String) this.f26410G) == null ? " transportName" : HttpUrl.FRAGMENT_ENCODE_SET;
        if (((l) this.f26412I) == null) {
            strA = strA.concat(" encodedPayload");
        }
        if (((Long) this.f26413J) == null) {
            strA = U2.A(strA, " eventMillis");
        }
        if (((Long) this.f26414K) == null) {
            strA = U2.A(strA, " uptimeMillis");
        }
        if (((Map) this.f26415L) == null) {
            strA = U2.A(strA, " autoMetadata");
        }
        if (strA.isEmpty()) {
            return new h((String) this.f26410G, (Integer) this.f26411H, (l) this.f26412I, ((Long) this.f26413J).longValue(), ((Long) this.f26414K).longValue(), (Map) this.f26415L);
        }
        throw new IllegalStateException("Missing required properties:".concat(strA));
    }

    public final n g(String str) {
        return (n) ((HashMap) this.f26410G).get(str);
    }

    public final n h(String str) {
        n nVar = (n) ((HashMap) this.f26410G).get(str);
        if (nVar != null) {
            return nVar;
        }
        SparseArray sparseArray = (SparseArray) this.f26411H;
        int size = sparseArray.size();
        int i8 = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i8 < size && i8 == sparseArray.keyAt(i8)) {
                i8++;
            }
            iKeyAt = i8;
        }
        n nVar2 = new n(iKeyAt, str, r.f30236c);
        ((HashMap) this.f26410G).put(str, nVar2);
        ((SparseArray) this.f26411H).put(iKeyAt, str);
        ((SparseBooleanArray) this.f26413J).put(iKeyAt, true);
        ((q) this.f26414K).c(nVar2);
        return nVar2;
    }

    public final ColorStateList j(Context context, int i8) {
        if (i8 == R.drawable.abc_edit_text_material) {
            return J6.r.g(context, R.color.abc_tint_edittext);
        }
        if (i8 == R.drawable.abc_switch_track_mtrl_alpha) {
            return J6.r.g(context, R.color.abc_tint_switch_track);
        }
        if (i8 != R.drawable.abc_switch_thumb_material) {
            if (i8 == R.drawable.abc_btn_default_mtrl_shape) {
                return f(context, c1.c(context, R.attr.colorButtonNormal));
            }
            if (i8 == R.drawable.abc_btn_borderless_material) {
                return f(context, 0);
            }
            if (i8 == R.drawable.abc_btn_colored_material) {
                return f(context, c1.c(context, R.attr.colorAccent));
            }
            if (i8 == R.drawable.abc_spinner_mtrl_am_alpha || i8 == R.drawable.abc_spinner_textfield_background_material) {
                return J6.r.g(context, R.color.abc_tint_spinner);
            }
            if (d((int[]) this.f26411H, i8)) {
                return c1.d(context, R.attr.colorControlNormal);
            }
            if (d((int[]) this.f26414K, i8)) {
                return J6.r.g(context, R.color.abc_tint_default);
            }
            if (d((int[]) this.f26415L, i8)) {
                return J6.r.g(context, R.color.abc_tint_btn_checkable);
            }
            if (i8 == R.drawable.abc_seekbar_thumb_material) {
                return J6.r.g(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = c1.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = c1.f26226b;
            iArr2[0] = c1.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = c1.f26229e;
            iArr2[1] = c1.c(context, R.attr.colorControlActivated);
            iArr[2] = c1.f26230f;
            iArr2[2] = c1.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = c1.f26226b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = c1.f26229e;
            iArr2[1] = c1.c(context, R.attr.colorControlActivated);
            iArr[2] = c1.f26230f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public final void k(long j8) {
        q qVar;
        ((q) this.f26414K).f(j8);
        q qVar2 = (q) this.f26415L;
        if (qVar2 != null) {
            qVar2.f(j8);
        }
        if (((q) this.f26414K).d() || (qVar = (q) this.f26415L) == null || !qVar.d()) {
            ((q) this.f26414K).g((HashMap) this.f26410G, (SparseArray) this.f26411H);
        } else {
            ((q) this.f26415L).g((HashMap) this.f26410G, (SparseArray) this.f26411H);
            ((q) this.f26414K).a((HashMap) this.f26410G);
        }
        q qVar3 = (q) this.f26415L;
        if (qVar3 != null) {
            qVar3.h();
            this.f26415L = null;
        }
    }

    public final void l(String str) {
        n nVar = (n) ((HashMap) this.f26410G).get(str);
        if (nVar != null && nVar.f30221c.isEmpty() && nVar.f30222d.isEmpty()) {
            ((HashMap) this.f26410G).remove(str);
            SparseBooleanArray sparseBooleanArray = (SparseBooleanArray) this.f26413J;
            int i8 = nVar.f30219a;
            boolean z7 = sparseBooleanArray.get(i8);
            ((q) this.f26414K).b(nVar, z7);
            if (z7) {
                ((SparseArray) this.f26411H).remove(i8);
                ((SparseBooleanArray) this.f26413J).delete(i8);
            } else {
                ((SparseArray) this.f26411H).put(i8, null);
                ((SparseBooleanArray) this.f26412I).put(i8, true);
            }
        }
    }

    public final void m(l lVar) {
        if (lVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        this.f26412I = lVar;
    }

    public final void o() {
        ((q) this.f26414K).e((HashMap) this.f26410G);
        int size = ((SparseBooleanArray) this.f26412I).size();
        for (int i8 = 0; i8 < size; i8++) {
            ((SparseArray) this.f26411H).remove(((SparseBooleanArray) this.f26412I).keyAt(i8));
        }
        ((SparseBooleanArray) this.f26412I).clear();
        ((SparseBooleanArray) this.f26413J).clear();
    }

    @Override // Z3.Y
    public final /* bridge */ /* synthetic */ Object zza() {
        Application application = (Application) ((X) this.f26410G).zza();
        return new C0430l(application, (C0438u) ((X) this.f26412I).zza(), (C0427i) ((X) this.f26413J).zza(), (C0435q) ((X) this.f26414K).zza(), (X) this.f26415L);
    }

    public /* synthetic */ C3061x(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        this.f26410G = obj;
        this.f26411H = obj2;
        this.f26412I = obj3;
        this.f26413J = obj4;
        this.f26414K = obj5;
        this.f26415L = obj6;
    }

    public C3061x(Activity activity, d dVar, String str, String str2) {
        this.f26414K = null;
        this.f26411H = activity;
        this.f26412I = dVar;
        this.f26410G = str;
        this.f26413J = str2;
        this.f26415L = (JSONObject) this.f26415L;
        i iVar = new i(str2, new c(this), new c(this));
        iVar.f29823Q = new A2.i(50000, 0);
        Q1.c((Activity) this.f26411H).a(iVar);
    }
}
