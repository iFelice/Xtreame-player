package b7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class L0 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f10100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap f10101c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ M0 f10102d;

    public L0(M0 m7, Context context, ArrayList arrayList) {
        this.f10102d = m7;
        new ArrayList();
        this.f10099a = context;
        this.f10100b = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f10100b.size();
    }

    @Override // android.widget.Adapter
    public final /* bridge */ /* synthetic */ Object getItem(int i8) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        ImageView imageView;
        Context context = this.f10099a;
        new c7.d(context);
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.orplayer_activity_channel_item_tv, viewGroup, false);
        this.f10101c = (HashMap) this.f10100b.get(i8);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_channel_name_list);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.img_ch);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.img_fav);
        imageView3.setVisibility(8);
        imageView3.setTag(this.f10101c.get("stream_id"));
        String str = M0.f10110e1;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView2.getLayoutParams();
        int i9 = M0.f10114i1;
        layoutParams.width = i9;
        layoutParams.height = i9;
        imageView2.setLayoutParams(layoutParams);
        boolean zA = z4.q0.q().a("ORT_isDemo", false);
        Integer numValueOf = Integer.valueOf(R.drawable.logo);
        try {
            if (zA) {
                imageView = imageView3;
                textView.setText("Channel " + String.valueOf(i8));
                if (((String) this.f10101c.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(context).m(numValueOf).b()).l(6, 9)).F(imageView2);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(context).n(((String) this.f10101c.get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)))).b()).l(6, 6)).f(R.drawable.logo)).F(imageView2);
                }
            } else {
                imageView = imageView3;
                textView.setText((CharSequence) this.f10101c.get("name"));
                if (((String) this.f10101c.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(context).m(numValueOf).g()).F(imageView2);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(context).n(((String) this.f10101c.get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)))).g()).f(R.drawable.logo)).F(imageView2);
                }
            }
        } catch (Exception unused) {
        }
        M0 m7 = this.f10102d;
        if (m7.f10121I0.d0((String) ((HashMap) m7.f10117E0.get(i8)).get("stream_id"), m7.f10122J0.f25478a, "_live").equals("yes")) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        return viewInflate;
    }
}
