.class public final Lcom/google/android/gms/internal/ads/HG;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/HG;

.field public static final c:Lcom/google/android/gms/internal/ads/HG;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/FG;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 18
    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/HG;->c:Lcom/google/android/gms/internal/ads/HG;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 32
    .line 33
    const/16 v2, 0xf

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 44
    .line 45
    const/16 v2, 0xe

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 54
    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 56
    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 66
    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 68
    .line 69
    const/16 v2, 0xc

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/HG;

    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/internal/ads/fF;

    .line 80
    .line 81
    const/16 v2, 0xb

    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/HG;-><init>(Lcom/google/android/gms/internal/ads/fF;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/fF;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/UD;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "java.vendor"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "The Android Project"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/FG;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/FG;-><init>(Lcom/google/android/gms/internal/ads/fF;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/HG;->a:Lcom/google/android/gms/internal/ads/FG;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/FG;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/FG;-><init>(Lcom/google/android/gms/internal/ads/fF;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/FG;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/FG;-><init>(Lcom/google/android/gms/internal/ads/fF;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HG;->a:Lcom/google/android/gms/internal/ads/FG;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/FG;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "GmsCore_OpenSSL"

    .line 7
    .line 8
    const-string v4, "AndroidOpenSSL"

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FG;->b:Lcom/google/android/gms/internal/ads/IG;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v1, "Conscrypt"

    .line 17
    .line 18
    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 v4, 0x3

    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    aget-object v4, v1, v2

    .line 31
    .line 32
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/security/Provider;

    .line 59
    .line 60
    :try_start_0
    move-object v3, v0

    .line 61
    check-cast v3, Lcom/google/android/gms/internal/ads/fF;

    .line 62
    .line 63
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/fF;->g(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_4

    .line 68
    :catch_0
    move-exception v2

    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    move-object v5, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    const-string v0, "No good Provider found."

    .line 76
    .line 77
    invoke-direct {p1, v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :pswitch_0
    check-cast v0, Lcom/google/android/gms/internal/ads/fF;

    .line 82
    .line 83
    invoke-virtual {v0, p1, v5}, Lcom/google/android/gms/internal/ads/fF;->g(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_4

    .line 88
    :pswitch_1
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    :goto_2
    const/4 v4, 0x2

    .line 98
    if-ge v2, v4, :cond_5

    .line 99
    .line 100
    aget-object v4, v1, v2

    .line 101
    .line 102
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/security/Provider;

    .line 129
    .line 130
    :try_start_1
    move-object v3, v0

    .line 131
    check-cast v3, Lcom/google/android/gms/internal/ads/fF;

    .line 132
    .line 133
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/fF;->g(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    goto :goto_4

    .line 138
    :catch_1
    nop

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    check-cast v0, Lcom/google/android/gms/internal/ads/fF;

    .line 141
    .line 142
    invoke-virtual {v0, p1, v5}, Lcom/google/android/gms/internal/ads/fF;->g(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_4
    return-object p1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
