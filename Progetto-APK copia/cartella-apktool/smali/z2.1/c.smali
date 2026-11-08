.class public final Lz2/c;
.super Lc1/d;
.source "SourceFile"


# instance fields
.field public final synthetic H:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz2/c;->H:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lc1/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n()Lz2/k;
    .locals 1

    .line 1
    iget v0, p0, Lz2/c;->H:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz2/m;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lz2/m;-><init>(Lz2/c;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lz2/g;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lz2/g;-><init>(Lz2/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Lz2/b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lz2/b;-><init>(Lz2/c;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
