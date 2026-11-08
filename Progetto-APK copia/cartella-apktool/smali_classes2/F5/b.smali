.class public final LF5/b;
.super LF5/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(ILw5/a;)V
    .locals 0

    .line 1
    iput p1, p0, LF5/b;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf/H;-><init>(Lw5/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, LF5/b;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x32

    .line 5
    .line 6
    const/16 v3, 0x29

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/16 v5, 0x30

    .line 10
    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v0, "(01)"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lf/H;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/gms/internal/ads/bD;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-virtual {v2, v3, v3}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v6, v1}, LF5/e;->t(Ljava/lang/StringBuilder;II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lcom/google/android/gms/internal/ads/bD;

    .line 44
    .line 45
    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/internal/ads/bD;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lw5/a;

    .line 53
    .line 54
    iget v0, v0, Lw5/a;->H:I

    .line 55
    .line 56
    if-lt v0, v5, :cond_2

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6, v0}, LF5/e;->s(ILjava/lang/StringBuilder;)V

    .line 64
    .line 65
    .line 66
    iget-object v6, p0, Lf/H;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lcom/google/android/gms/internal/ads/bD;

    .line 69
    .line 70
    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const-string v6, "(393"

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lf/H;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Lcom/google/android/gms/internal/ads/bD;

    .line 88
    .line 89
    const/16 v4, 0xa

    .line 90
    .line 91
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    div-int/lit8 v3, v2, 0x64

    .line 96
    .line 97
    if-nez v3, :cond_0

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_0
    div-int/lit8 v3, v2, 0xa

    .line 103
    .line 104
    if-nez v3, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lf/H;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v2, Lcom/google/android/gms/internal/ads/bD;

    .line 115
    .line 116
    const/16 v3, 0x3c

    .line 117
    .line 118
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/bD;->d(ILjava/lang/String;)LF5/j;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v1, v1, LF5/j;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0

    .line 132
    :cond_2
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 133
    .line 134
    throw v0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lw5/a;

    .line 138
    .line 139
    iget v0, v0, Lw5/a;->H:I

    .line 140
    .line 141
    if-lt v0, v5, :cond_3

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v6, v0}, LF5/e;->s(ILjava/lang/StringBuilder;)V

    .line 149
    .line 150
    .line 151
    iget-object v6, p0, Lf/H;->b:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v6, Lcom/google/android/gms/internal/ads/bD;

    .line 154
    .line 155
    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const-string v5, "(392"

    .line 160
    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lf/H;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v3, Lcom/google/android/gms/internal/ads/bD;

    .line 173
    .line 174
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/bD;->d(ILjava/lang/String;)LF5/j;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v1, v1, LF5/j;->c:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    :cond_3
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 189
    .line 190
    throw v0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
