.class public final synthetic Lcom/google/android/gms/internal/ads/P5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:LY/f;


# direct methods
.method public synthetic constructor <init>(LY/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P5;->a:LY/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P5;->a:LY/f;

    .line 2
    .line 3
    iget-object v1, v0, LY/f;->L:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/Q5;

    .line 6
    .line 7
    iget-object v2, v0, LY/f;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/M5;

    .line 10
    .line 11
    iget-object v3, v0, LY/f;->K:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Landroid/webkit/WebView;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v5, v0, LY/f;->H:Z

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/M5;->g:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget v4, v2, Lcom/google/android/gms/internal/ads/M5;->m:I

    .line 26
    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 28
    .line 29
    iput v4, v2, Lcom/google/android/gms/internal/ads/M5;->m:I

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "text"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/Q5;->T:Z

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\n"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    int-to-float v8, p1

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-float v9, p1

    .line 105
    move-object v3, v2

    .line 106
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/M5;->b(Ljava/lang/String;ZFFFF)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    int-to-float v8, p1

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    int-to-float v9, p1

    .line 130
    move-object v3, v2

    .line 131
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/M5;->b(Ljava/lang/String;ZFFFF)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/M5;->e()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Q5;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 141
    .line 142
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/f8;->h(Lcom/google/android/gms/internal/ads/M5;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_1
    const-string v0, "Failed to get webview content."

    .line 147
    .line 148
    invoke-static {v0, p1}, Lp3/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    const-string v0, "ContentFetchTask.processWebViewContent"

    .line 152
    .line 153
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 154
    .line 155
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 156
    .line 157
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_0
    const-string p1, "Json string may be malformed."

    .line 162
    .line 163
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_2
    return-void

    .line 167
    :catchall_1
    move-exception p1

    .line 168
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    throw p1
.end method
