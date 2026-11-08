package b7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0552u0 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f10497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer[] f10498c;

    public C0552u0(ORPlayerMainActivity oRPlayerMainActivity, String[] strArr, Integer[] numArr) {
        this.f10496a = oRPlayerMainActivity;
        this.f10498c = numArr;
        this.f10497b = strArr;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f10497b.length;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i8) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        View viewInflate = ((LayoutInflater) this.f10496a.getSystemService("layout_inflater")).inflate(R.layout.orplayer_home_menu_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_menu_item);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_menu_item);
        textView.setText(this.f10497b[i8]);
        imageView.setImageResource(this.f10498c[i8].intValue());
        return viewInflate;
    }
}
