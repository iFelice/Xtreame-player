package androidx.leanback.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Handler;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import okhttp3.HttpUrl;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SearchBar extends RelativeLayout {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final /* synthetic */ int f9189g0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SearchEditText f9190G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SpeechOrbView f9191H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ImageView f9192I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f9193J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f9194K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f9195L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Drawable f9196M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Handler f9197N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final InputMethodManager f9198O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f9199P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Drawable f9200Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f9201R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f9202S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f9203T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f9204U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f9205V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f9206W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public SpeechRecognizer f9207a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f9208b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public SoundPool f9209c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseIntArray f9210d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f9211e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Context f9212f0;

    public SearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9197N = new Handler();
        this.f9199P = false;
        this.f9210d0 = new SparseIntArray();
        this.f9211e0 = false;
        this.f9212f0 = context;
        Resources resources = getResources();
        LayoutInflater.from(getContext()).inflate(R.layout.lb_search_bar, (ViewGroup) this, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.lb_search_bar_height));
        layoutParams.addRule(10, -1);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        setClipChildren(false);
        this.f9193J = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f9198O = (InputMethodManager) context.getSystemService("input_method");
        this.f9202S = resources.getColor(R.color.lb_search_bar_text_speech_mode);
        this.f9201R = resources.getColor(R.color.lb_search_bar_text);
        this.f9206W = resources.getInteger(R.integer.lb_search_bar_speech_mode_background_alpha);
        this.f9205V = resources.getInteger(R.integer.lb_search_bar_text_mode_background_alpha);
        this.f9204U = resources.getColor(R.color.lb_search_bar_hint_speech_mode);
        this.f9203T = resources.getColor(R.color.lb_search_bar_hint);
    }

    public final void a() {
        if (this.f9211e0) {
            return;
        }
        if (!hasFocus()) {
            requestFocus();
        }
        if (this.f9207a0 == null) {
            return;
        }
        if (getContext().checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            throw new IllegalStateException("android.permission.RECORD_AUDIO required for search");
        }
        this.f9211e0 = true;
        this.f9190G.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        this.f9207a0.setRecognitionListener(new I(this));
        this.f9208b0 = true;
        this.f9207a0.startListening(intent);
    }

    public final void b() {
        if (this.f9211e0) {
            this.f9190G.setText(this.f9193J);
            this.f9190G.setHint(this.f9194K);
            this.f9211e0 = false;
            if (this.f9207a0 == null) {
                return;
            }
            this.f9191H.c();
            if (this.f9208b0) {
                this.f9207a0.cancel();
                this.f9208b0 = false;
            }
            this.f9207a0.setRecognitionListener(null);
        }
    }

    public final void c() {
        String string = getResources().getString(R.string.lb_search_bar_hint);
        if (!TextUtils.isEmpty(this.f9195L)) {
            string = this.f9191H.isFocused() ? getResources().getString(R.string.lb_search_bar_hint_with_title_speech, this.f9195L) : getResources().getString(R.string.lb_search_bar_hint_with_title, this.f9195L);
        } else if (this.f9191H.isFocused()) {
            string = getResources().getString(R.string.lb_search_bar_hint_speech);
        }
        this.f9194K = string;
        SearchEditText searchEditText = this.f9190G;
        if (searchEditText != null) {
            searchEditText.setHint(string);
        }
    }

    public final void d(boolean z7) {
        if (z7) {
            this.f9200Q.setAlpha(this.f9206W);
            boolean zIsFocused = this.f9191H.isFocused();
            int i8 = this.f9204U;
            if (zIsFocused) {
                this.f9190G.setTextColor(i8);
                this.f9190G.setHintTextColor(i8);
            } else {
                this.f9190G.setTextColor(this.f9202S);
                this.f9190G.setHintTextColor(i8);
            }
        } else {
            this.f9200Q.setAlpha(this.f9205V);
            this.f9190G.setTextColor(this.f9201R);
            this.f9190G.setHintTextColor(this.f9203T);
        }
        c();
    }

    public Drawable getBadgeDrawable() {
        return this.f9196M;
    }

    public CharSequence getHint() {
        return this.f9194K;
    }

    public String getTitle() {
        return this.f9195L;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9209c0 = new SoundPool(2, 1, 0);
        int[] iArr = {R.raw.lb_voice_failure, R.raw.lb_voice_open, R.raw.lb_voice_no_input, R.raw.lb_voice_success};
        for (int i8 = 0; i8 < 4; i8++) {
            int i9 = iArr[i8];
            this.f9210d0.put(i9, this.f9209c0.load(this.f9212f0, i9, 1));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        this.f9209c0.release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f9200Q = ((RelativeLayout) findViewById(R.id.lb_search_bar_items)).getBackground();
        this.f9190G = (SearchEditText) findViewById(R.id.lb_search_text_editor);
        ImageView imageView = (ImageView) findViewById(R.id.lb_search_bar_badge);
        this.f9192I = imageView;
        Drawable drawable = this.f9196M;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        int i8 = 0;
        this.f9190G.setOnFocusChangeListener(new D(this, i8));
        this.f9190G.addTextChangedListener(new F(this, new E(this, i8)));
        this.f9190G.setOnKeyboardDismissListener(new p039f.S(this, 21));
        this.f9190G.setOnEditorActionListener(new H(this, i8));
        this.f9190G.setPrivateImeOptions("escapeNorth,voiceDismiss");
        SpeechOrbView speechOrbView = (SpeechOrbView) findViewById(R.id.lb_search_bar_speech_orb);
        this.f9191H = speechOrbView;
        speechOrbView.setOnOrbClickedListener(new ViewOnClickListenerC2988c(this, 2));
        this.f9191H.setOnFocusChangeListener(new D(this, 1));
        d(hasFocus());
        c();
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f9196M = drawable;
        ImageView imageView = this.f9192I;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                this.f9192I.setVisibility(0);
            } else {
                this.f9192I.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setNextFocusDownId(int i8) {
        this.f9191H.setNextFocusDownId(i8);
        this.f9190G.setNextFocusDownId(i8);
    }

    public void setPermissionListener(K k8) {
    }

    public void setSearchAffordanceColors(N n7) {
        SpeechOrbView speechOrbView = this.f9191H;
        if (speechOrbView != null) {
            speechOrbView.setNotListeningOrbColors(n7);
        }
    }

    public void setSearchAffordanceColorsInListening(N n7) {
        SpeechOrbView speechOrbView = this.f9191H;
        if (speechOrbView != null) {
            speechOrbView.setListeningOrbColors(n7);
        }
    }

    public void setSearchBarListener(J j8) {
    }

    public void setSearchQuery(String str) {
        b();
        this.f9190G.setText(str);
        setSearchQueryInternal(str);
    }

    public void setSearchQueryInternal(String str) {
        if (TextUtils.equals(this.f9193J, str)) {
            return;
        }
        this.f9193J = str;
    }

    @Deprecated
    public void setSpeechRecognitionCallback(Q q7) {
    }

    public void setSpeechRecognizer(SpeechRecognizer speechRecognizer) {
        b();
        SpeechRecognizer speechRecognizer2 = this.f9207a0;
        if (speechRecognizer2 != null) {
            speechRecognizer2.setRecognitionListener(null);
            if (this.f9208b0) {
                this.f9207a0.cancel();
                this.f9208b0 = false;
            }
        }
        this.f9207a0 = speechRecognizer;
    }

    public void setTitle(String str) {
        this.f9195L = str;
        c();
    }
}
