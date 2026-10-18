package b7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import pe.hf.black20.R;
import pe.hf.black20.SettingsMenuActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class I1 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f10086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f10087c;

    public I1(Context context, String[] strArr, int[] iArr) {
        this.f10085a = context;
        this.f10087c = iArr;
        this.f10086b = strArr;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f10086b.length;
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
        View viewInflate = ((LayoutInflater) this.f10085a.getSystemService("layout_inflater")).inflate(R.layout.activity_settings_menu_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_settings_text);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_settings_icon);
        int i9 = ((int) (((double) SettingsMenuActivity.f29155W) * 0.75d)) / 9;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i9;
        layoutParams.height = i9;
        imageView.setLayoutParams(layoutParams);
        textView.setText(this.f10086b[i8]);
        imageView.setImageResource(this.f10087c[i8]);
        return viewInflate;
    }
}
