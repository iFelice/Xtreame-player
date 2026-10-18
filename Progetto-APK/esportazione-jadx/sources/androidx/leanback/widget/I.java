package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.regex.Matcher;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class I implements RecognitionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f9129a;

    public I(SearchBar searchBar) {
        this.f9129a = searchBar;
    }

    @Override // android.speech.RecognitionListener
    public final void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onBufferReceived(byte[] bArr) {
    }

    @Override // android.speech.RecognitionListener
    public final void onEndOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onError(int i8) {
        switch (i8) {
            case 1:
                int i9 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer network timeout");
                break;
            case 2:
                int i10 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer network error");
                break;
            case 3:
                int i11 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer audio error");
                break;
            case 4:
                int i12 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer server error");
                break;
            case 5:
                int i13 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer client error");
                break;
            case 6:
                int i14 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer speech timeout");
                break;
            case 7:
                int i15 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer no match");
                break;
            case 8:
                int i16 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer busy");
                break;
            case 9:
                int i17 = SearchBar.f9189g0;
                Log.w("SearchBar", "recognizer insufficient permissions");
                break;
            default:
                int i18 = SearchBar.f9189g0;
                Log.d("SearchBar", "recognizer other error");
                break;
        }
        SearchBar searchBar = this.f9129a;
        searchBar.b();
        searchBar.f9197N.post(new C(searchBar, R.raw.lb_voice_failure, 0));
    }

    @Override // android.speech.RecognitionListener
    public final void onEvent(int i8, Bundle bundle) {
    }

    @Override // android.speech.RecognitionListener
    public final void onPartialResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        if (stringArrayList == null || stringArrayList.size() == 0) {
            return;
        }
        String str = stringArrayList.get(0);
        String str2 = stringArrayList.size() > 1 ? stringArrayList.get(1) : null;
        SearchEditText searchEditText = this.f9129a.f9190G;
        searchEditText.getClass();
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (str2 != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str2);
            Matcher matcher = V.f9271L.matcher(str2);
            while (matcher.find()) {
                int iStart = matcher.start() + length;
                spannableStringBuilder.setSpan(new U(searchEditText, str2.charAt(matcher.start()), iStart), iStart, matcher.end() + length, 33);
            }
        }
        searchEditText.f9276J = Math.max(str.length(), searchEditText.f9276J);
        searchEditText.setText(new SpannedString(spannableStringBuilder));
        searchEditText.bringPointIntoView(searchEditText.length());
        ObjectAnimator objectAnimator = searchEditText.f9277K;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int streamPosition = searchEditText.getStreamPosition();
        int length2 = searchEditText.length();
        int i8 = length2 - streamPosition;
        if (i8 > 0) {
            if (searchEditText.f9277K == null) {
                ObjectAnimator objectAnimator2 = new ObjectAnimator();
                searchEditText.f9277K = objectAnimator2;
                objectAnimator2.setTarget(searchEditText);
                searchEditText.f9277K.setProperty(V.f9272M);
            }
            searchEditText.f9277K.setIntValues(streamPosition, length2);
            searchEditText.f9277K.setDuration(((long) i8) * 50);
            searchEditText.f9277K.start();
        }
    }

    @Override // android.speech.RecognitionListener
    public final void onReadyForSpeech(Bundle bundle) {
        SearchBar searchBar = this.f9129a;
        SpeechOrbView speechOrbView = searchBar.f9191H;
        speechOrbView.setOrbColors(speechOrbView.f9247c0);
        speechOrbView.setOrbIcon(speechOrbView.getResources().getDrawable(R.drawable.lb_ic_search_mic));
        speechOrbView.a(true);
        speechOrbView.f9226S = false;
        speechOrbView.b();
        View view = speechOrbView.f9216I;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        speechOrbView.f9249e0 = 0;
        speechOrbView.f9250f0 = true;
        searchBar.f9197N.post(new C(searchBar, R.raw.lb_voice_open, 0));
    }

    @Override // android.speech.RecognitionListener
    public final void onResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        int i8 = 0;
        SearchBar searchBar = this.f9129a;
        if (stringArrayList != null) {
            String str = stringArrayList.get(0);
            searchBar.f9193J = str;
            searchBar.f9190G.setText(str);
            TextUtils.isEmpty(searchBar.f9193J);
        }
        searchBar.b();
        searchBar.f9197N.post(new C(searchBar, R.raw.lb_voice_success, i8));
    }

    @Override // android.speech.RecognitionListener
    public final void onRmsChanged(float f8) {
        this.f9129a.f9191H.setSoundLevel(f8 < 0.0f ? 0 : (int) (f8 * 10.0f));
    }
}
