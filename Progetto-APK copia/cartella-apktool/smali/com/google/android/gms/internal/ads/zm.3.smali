.class public final synthetic Lcom/google/android/gms/internal/ads/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cg;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Dm;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/Ef;

.field public final synthetic J:Lcom/google/android/gms/internal/ads/q6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Dm;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/q6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/zm;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zm;->H:Lcom/google/android/gms/internal/ads/Dm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zm;->I:Lcom/google/android/gms/internal/ads/Ef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zm;->J:Lcom/google/android/gms/internal/ads/q6;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zm;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, ", Failing URL: "

    .line 5
    .line 6
    const-string v3, ", Description: "

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zm;->I:Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zm;->J:Lcom/google/android/gms/internal/ads/q6;

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zm;->H:Lcom/google/android/gms/internal/ads/Dm;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    iget-object p1, v6, Lcom/google/android/gms/internal/ads/Dm;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 20
    .line 21
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Uf;->B3(Ll3/Y0;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/q6;->d()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance p4, Lcom/google/android/gms/internal/ads/qr;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "Html video Web View failed to load. Error code: "

    .line 52
    .line 53
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p4, v1, p1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, p4}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->G3:Lcom/google/android/gms/internal/ads/J7;

    .line 86
    .line 87
    sget-object v7, Ll3/q;->d:Ll3/q;

    .line 88
    .line 89
    iget-object v7, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 90
    .line 91
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Dm;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    if-eqz p4, :cond_3

    .line 106
    .line 107
    iget-object p1, v6, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, v6, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Uf;->B3(Ll3/Y0;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/q6;->d()V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/qr;

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "Native Video WebView failed to load. Error code: "

    .line 135
    .line 136
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p4, v1, p1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, p4}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    iget-object p1, v6, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 166
    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object p2, v6, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Uf;->B3(Ll3/Y0;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/q6;->d()V

    .line 185
    .line 186
    .line 187
    :goto_1
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
