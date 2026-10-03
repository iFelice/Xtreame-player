.class public final synthetic Lcom/google/android/gms/internal/ads/GD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bE;
.implements Lcom/google/android/gms/internal/ads/ZD;
.implements Lcom/google/android/gms/internal/ads/xE;
.implements Lcom/google/android/gms/internal/ads/vE;
.implements Lcom/google/android/gms/internal/ads/ME;
.implements Lcom/google/android/gms/internal/ads/AE;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/FE;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/eE;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eE;->l:Lcom/google/android/gms/internal/ads/FE;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dE;->b:[I

    .line 5
    iget v1, p1, Lcom/google/android/gms/internal/ads/FE;->d:I

    .line 6
    invoke-static {v1}, Lu/h;->b(I)I

    move-result v1

    aget v0, v0, v1

    return-object p1

    .line 7
    :sswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/AD;

    sget-object v0, Lcom/google/android/gms/internal/ads/SD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/AG;->B()Lcom/google/android/gms/internal/ads/zG;

    move-result-object v0

    .line 9
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/AD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v4, v3

    .line 11
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/AG;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/AG;->F(Lcom/google/android/gms/internal/ads/AG;Lcom/google/android/gms/internal/ads/VG;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/AG;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 17
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/AD;->l:Lcom/google/android/gms/internal/ads/ED;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ED;->a:Lcom/google/android/gms/internal/ads/DD;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/SD;->b(Lcom/google/android/gms/internal/ads/DD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/AD;->o:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 20
    :sswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/kD;

    sget-object v0, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/RF;->B()Lcom/google/android/gms/internal/ads/QF;

    move-result-object v0

    .line 22
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/kD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v4, v3

    .line 24
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 26
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 27
    check-cast v3, Lcom/google/android/gms/internal/ads/RF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/RF;->F(Lcom/google/android/gms/internal/ads/RF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/RF;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 30
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kD;->l:Lcom/google/android/gms/internal/ads/nD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/MD;->b(Lcom/google/android/gms/internal/ads/mD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kD;->o:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 33
    :sswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/gD;

    sget-object v0, Lcom/google/android/gms/internal/ads/KD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/NF;->B()Lcom/google/android/gms/internal/ads/MF;

    move-result-object v0

    .line 35
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/gD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v4, v3

    .line 37
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 39
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 40
    check-cast v3, Lcom/google/android/gms/internal/ads/NF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/NF;->F(Lcom/google/android/gms/internal/ads/NF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/NF;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 43
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/gD;->l:Lcom/google/android/gms/internal/ads/jD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/jD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/KD;->b(Lcom/google/android/gms/internal/ads/iD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 45
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gD;->o:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 46
    :sswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/cD;

    sget-object v0, Lcom/google/android/gms/internal/ads/JD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/IF;->B()Lcom/google/android/gms/internal/ads/HF;

    move-result-object v0

    .line 48
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v4, v3

    .line 50
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 52
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 53
    check-cast v3, Lcom/google/android/gms/internal/ads/IF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/IF;->F(Lcom/google/android/gms/internal/ads/IF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/IF;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 56
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cD;->l:Lcom/google/android/gms/internal/ads/fD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/fD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 57
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/JD;->b(Lcom/google/android/gms/internal/ads/eD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 58
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cD;->o:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 59
    :sswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/XC;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/CF;->B()Lcom/google/android/gms/internal/ads/BF;

    move-result-object v0

    .line 61
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/XC;->l:Lcom/google/android/gms/internal/ads/aD;

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/GF;->B()Lcom/google/android/gms/internal/ads/FF;

    move-result-object v4

    .line 63
    iget v3, v3, Lcom/google/android/gms/internal/ads/aD;->b:I

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 65
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 66
    check-cast v5, Lcom/google/android/gms/internal/ads/GF;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/GF;->D(Lcom/google/android/gms/internal/ads/GF;I)V

    .line 67
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/GF;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 69
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 70
    check-cast v4, Lcom/google/android/gms/internal/ads/CF;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/CF;->G(Lcom/google/android/gms/internal/ads/CF;Lcom/google/android/gms/internal/ads/GF;)V

    .line 71
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/XC;->m:Lcom/google/android/gms/internal/ads/Xu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v4, v3

    .line 72
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 74
    check-cast v3, Lcom/google/android/gms/internal/ads/CF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/CF;->H(Lcom/google/android/gms/internal/ads/CF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/CF;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 77
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/XC;->l:Lcom/google/android/gms/internal/ads/aD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aD;->c:Lcom/google/android/gms/internal/ads/ZC;

    .line 78
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HD;->b(Lcom/google/android/gms/internal/ads/ZC;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 79
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/XC;->o:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/Cw;)Ljava/lang/Object;
    .locals 6

    .line 80
    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    const/16 v1, 0x20

    iget v2, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 81
    check-cast p1, Lcom/google/android/gms/internal/ads/eE;

    .line 82
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eE;->l:Lcom/google/android/gms/internal/ads/FE;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/ads/dE;->b:[I

    .line 84
    iget v2, v0, Lcom/google/android/gms/internal/ads/FE;->d:I

    .line 85
    invoke-static {v2}, Lu/h;->b(I)I

    move-result v2

    aget v1, v1, v2

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/cG;->A()Lcom/google/android/gms/internal/ads/aG;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 89
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/cG;->F(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 91
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/cG;->G(Lcom/google/android/gms/internal/ads/cG;Lcom/google/android/gms/internal/ads/XG;)V

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 93
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    iget v5, v0, Lcom/google/android/gms/internal/ads/FE;->d:I

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/cG;->H(Lcom/google/android/gms/internal/ads/cG;I)V

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cG;

    const-class v2, Lcom/google/android/gms/internal/ads/FC;

    .line 95
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/JC;->a(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    check-cast v1, Lcom/google/android/gms/internal/ads/FC;

    .line 97
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eE;->l:Lcom/google/android/gms/internal/ads/FE;

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    goto :goto_1

    .line 102
    :cond_3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/dF;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    .line 104
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/WE;

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/ads/MG;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/MG;-><init>(Lcom/google/android/gms/internal/ads/WE;)V

    return-object v0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/TE;

    check-cast p1, Lcom/google/android/gms/internal/ads/WE;

    .line 107
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 108
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/OE;

    sget-object v2, Lcom/google/android/gms/internal/ads/PE;->a:Lcom/google/android/gms/internal/ads/jE;

    .line 110
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/OE;->l:Lcom/google/android/gms/internal/ads/RE;

    .line 111
    iget v2, v2, Lcom/google/android/gms/internal/ads/RE;->a:I

    if-ne v2, v1, :cond_5

    .line 112
    new-instance v0, Lcom/google/android/gms/internal/ads/MG;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/MG;-><init>(Lcom/google/android/gms/internal/ads/OE;)V

    return-object v0

    .line 113
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/OE;

    sget-object v2, Lcom/google/android/gms/internal/ads/PE;->a:Lcom/google/android/gms/internal/ads/jE;

    .line 115
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/OE;->l:Lcom/google/android/gms/internal/ads/RE;

    .line 116
    iget p1, p1, Lcom/google/android/gms/internal/ads/RE;->a:I

    if-ne p1, v1, :cond_7

    .line 117
    new-instance p1, Lcom/google/android/gms/internal/ads/TE;

    .line 118
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    .line 119
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/GE;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/ED;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/SD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/BG;->B()Lcom/google/android/gms/internal/ads/BG;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ED;->a:Lcom/google/android/gms/internal/ads/DD;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/SD;->b(Lcom/google/android/gms/internal/ads/DD;)Lcom/google/android/gms/internal/ads/xG;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :sswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/nD;

    .line 51
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/SF;->A()Lcom/google/android/gms/internal/ads/SF;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/MD;->b(Lcom/google/android/gms/internal/ads/mD;)Lcom/google/android/gms/internal/ads/xG;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :sswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/jD;

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/KD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/ads/PF;->C()Lcom/google/android/gms/internal/ads/OF;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget v2, p1, Lcom/google/android/gms/internal/ads/jD;->a:I

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 114
    .line 115
    .line 116
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 117
    .line 118
    check-cast v3, Lcom/google/android/gms/internal/ads/PF;

    .line 119
    .line 120
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/PF;->E(Lcom/google/android/gms/internal/ads/PF;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/google/android/gms/internal/ads/PF;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/jD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/KD;->b(Lcom/google/android/gms/internal/ads/iD;)Lcom/google/android/gms/internal/ads/xG;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :sswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/fD;

    .line 157
    .line 158
    sget-object v0, Lcom/google/android/gms/internal/ads/JD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 159
    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/ads/LF;->C()Lcom/google/android/gms/internal/ads/KF;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget v2, p1, Lcom/google/android/gms/internal/ads/fD;->a:I

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 176
    .line 177
    .line 178
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 179
    .line 180
    check-cast v3, Lcom/google/android/gms/internal/ads/LF;

    .line 181
    .line 182
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/LF;->E(Lcom/google/android/gms/internal/ads/LF;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/google/android/gms/internal/ads/LF;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/JD;->b(Lcom/google/android/gms/internal/ads/eD;)Lcom/google/android/gms/internal/ads/xG;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    nop

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    .line 4
    .line 5
    const-string v1, "Only version 0 parameters are accepted"

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/SD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 29
    .line 30
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/BG;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/BG;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/BG;->A()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/SD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/DD;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/ED;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ED;-><init>(Lcom/google/android/gms/internal/ads/DD;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 59
    .line 60
    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    const-string v1, "Parsing XChaCha20Poly1305Parameters failed: "

    .line 68
    .line 69
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: "

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 112
    .line 113
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 114
    .line 115
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 116
    .line 117
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/SF;->B(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/MD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/mD;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lcom/google/android/gms/internal/ads/nD;

    .line 129
    .line 130
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/nD;-><init>(Lcom/google/android/gms/internal/ads/mD;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :catch_1
    move-exception p1

    .line 135
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 136
    .line 137
    const-string v1, "Parsing ChaCha20Poly1305Parameters failed: "

    .line 138
    .line 139
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v1, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: "

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/KD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 182
    .line 183
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 184
    .line 185
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 186
    .line 187
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/PF;->D(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/PF;

    .line 188
    .line 189
    .line 190
    move-result-object v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PF;->B()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_5

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PF;->A()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/16 v1, 0x10

    .line 202
    .line 203
    if-eq v0, v1, :cond_4

    .line 204
    .line 205
    const/16 v1, 0x20

    .line 206
    .line 207
    if-ne v0, v1, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 211
    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const/4 v1, 0x1

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    aput-object v0, v1, v2

    .line 221
    .line 222
    const-string v0, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    .line 223
    .line 224
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/KD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/iD;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    new-instance v1, Lcom/google/android/gms/internal/ads/jD;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 255
    .line 256
    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :catch_2
    move-exception p1

    .line 261
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 262
    .line 263
    const-string v1, "Parsing AesGcmSivParameters failed: "

    .line 264
    .line 265
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    const-string v1, "Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: "

    .line 280
    .line 281
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/JD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_8

    .line 302
    .line 303
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 308
    .line 309
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 310
    .line 311
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 312
    .line 313
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/LF;->D(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/LF;

    .line 314
    .line 315
    .line 316
    move-result-object v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LF;->B()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-nez v2, :cond_7

    .line 322
    .line 323
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 324
    .line 325
    const/4 v2, 0x0

    .line 326
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LF;->A()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/JD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/eD;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    return-object p1

    .line 357
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 358
    .line 359
    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :catch_3
    move-exception p1

    .line 364
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 365
    .line 366
    const-string v1, "Parsing AesGcmParameters failed: "

    .line 367
    .line 368
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    const-string v1, "Wrong type URL in call to AesGcmProtoSerialization.parseParameters: "

    .line 383
    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    nop

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/NC;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    .line 6
    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    .line 12
    .line 13
    const-string v6, "Only version 0 keys are accepted"

    .line 14
    .line 15
    sparse-switch v5, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/SD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 19
    .line 20
    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 29
    .line 30
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 33
    .line 34
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/AG;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/AG;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/AG;->A()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/SD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/DD;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/AG;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/AD;->i2(Lcom/google/android/gms/internal/ads/DD;Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/AD;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 72
    .line 73
    const-string v0, "Parsing XChaCha20Poly1305Key failed"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 88
    .line 89
    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 98
    .line 99
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 100
    .line 101
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 102
    .line 103
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/RF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/RF;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/RF;->A()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/MD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/mD;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/RF;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/kD;->i2(Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/kD;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 135
    .line 136
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :catch_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 141
    .line 142
    const-string v0, "Parsing ChaCha20Poly1305Key failed"

    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v0, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :sswitch_1
    sget-object v5, Lcom/google/android/gms/internal/ads/KD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 157
    .line 158
    const-string v5, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 159
    .line 160
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 167
    .line 168
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 169
    .line 170
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 171
    .line 172
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/NF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/NF;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NF;->A()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_6

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NF;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    const/16 v5, 0x10

    .line 191
    .line 192
    if-eq v4, v5, :cond_5

    .line 193
    .line 194
    const/16 v5, 0x20

    .line 195
    .line 196
    if-ne v4, v5, :cond_4

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 200
    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-array v0, v0, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object v2, v0, v1

    .line 208
    .line 209
    const-string v1, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    .line 210
    .line 211
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :cond_5
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/KD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/iD;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    new-instance v5, Lcom/google/android/gms/internal/ads/jD;

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-direct {v5, v4, v3}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Lcom/google/android/gms/internal/ads/bD;

    .line 237
    .line 238
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iput-object v5, v3, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NF;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bD;->q()Lcom/google/android/gms/internal/ads/gD;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    return-object p1

    .line 264
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 265
    .line 266
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :catch_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 271
    .line 272
    const-string v0, "Parsing AesGcmSivKey failed"

    .line 273
    .line 274
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 279
    .line 280
    const-string v0, "Wrong type URL in call to AesGcmSivProtoSerialization.parseKey"

    .line 281
    .line 282
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p1

    .line 286
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/JD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 287
    .line 288
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_9

    .line 295
    .line 296
    :try_start_3
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 297
    .line 298
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 299
    .line 300
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 301
    .line 302
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/IF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/IF;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/IF;->A()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_8

    .line 311
    .line 312
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 313
    .line 314
    const/4 v4, 0x0

    .line 315
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/IF;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 333
    .line 334
    .line 335
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/JD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/eD;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v3, Lcom/google/android/gms/internal/ads/bD;

    .line 346
    .line 347
    invoke-direct {v3, v1, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 348
    .line 349
    .line 350
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/IF;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 365
    .line 366
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bD;->p()Lcom/google/android/gms/internal/ads/cD;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    return-object p1

    .line 373
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 374
    .line 375
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_3 .. :try_end_3} :catch_3

    .line 379
    :catch_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 380
    .line 381
    const-string v0, "Parsing AesGcmKey failed"

    .line 382
    .line 383
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw p1

    .line 387
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 388
    .line 389
    const-string v0, "Wrong type URL in call to AesGcmProtoSerialization.parseKey"

    .line 390
    .line 391
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p1

    .line 395
    :sswitch_3
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_b

    .line 402
    .line 403
    :try_start_4
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 404
    .line 405
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 406
    .line 407
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 408
    .line 409
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/CF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/CF;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CF;->A()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_a

    .line 418
    .line 419
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 420
    .line 421
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CF;->D()Lcom/google/android/gms/internal/ads/GF;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/GF;->A()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 447
    .line 448
    .line 449
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/ZC;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    new-instance v1, La3/b;

    .line 460
    .line 461
    invoke-direct {v1}, La3/b;-><init>()V

    .line 462
    .line 463
    .line 464
    iput-object v0, v1, La3/b;->H:Ljava/lang/Object;

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    iput-object p1, v1, La3/b;->I:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v2, v1, La3/b;->J:Ljava/lang/Object;

    .line 481
    .line 482
    invoke-virtual {v1}, La3/b;->s()Lcom/google/android/gms/internal/ads/XC;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    return-object p1

    .line 487
    :cond_a
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 488
    .line 489
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw p1
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_4 .. :try_end_4} :catch_4

    .line 493
    :catch_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 494
    .line 495
    const-string v0, "Parsing AesEaxcKey failed"

    .line 496
    .line 497
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw p1

    .line 501
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    const-string v0, "Wrong type URL in call to AesEaxProtoSerialization.parseKey"

    .line 504
    .line 505
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw p1

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/YE;->d:Lcom/google/android/gms/internal/ads/YE;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/YE;->f:Lcom/google/android/gms/internal/ads/YE;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/ZE;->b:Lcom/google/android/gms/internal/ads/ZE;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget v4, p0, Lcom/google/android/gms/internal/ads/GD;->G:I

    .line 9
    .line 10
    const/16 v5, 0x40

    .line 11
    .line 12
    const/16 v6, 0x20

    .line 13
    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 18
    .line 19
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :sswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 38
    .line 39
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :sswitch_1
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 58
    .line 59
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :sswitch_2
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 78
    .line 79
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x10

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 88
    .line 89
    .line 90
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :sswitch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/sE;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sE;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/google/android/gms/internal/ads/GD;

    .line 105
    .line 106
    const/16 v2, 0x14

    .line 107
    .line 108
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/google/android/gms/internal/ads/aE;

    .line 112
    .line 113
    const-class v3, Lcom/google/android/gms/internal/ads/eE;

    .line 114
    .line 115
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/aE;-><init>(Lcom/google/android/gms/internal/ads/bE;Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    nop

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
