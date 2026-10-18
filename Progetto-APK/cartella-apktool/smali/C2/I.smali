.class public final LC2/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/D;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LC2/I;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LC2/I;->b:Landroid/content/res/Resources;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LC2/H;)LC2/C;
    .locals 4

    .line 1
    iget v0, p0, LC2/I;->a:I

    .line 2
    .line 3
    const-class v1, Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v2, p0, LC2/I;->b:Landroid/content/res/Resources;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, LC2/p;

    .line 11
    .line 12
    sget-object v0, LC2/L;->a:LC2/L;

    .line 13
    .line 14
    invoke-direct {p1, v2, v0}, LC2/p;-><init>(Landroid/content/res/Resources;LC2/C;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance v0, LC2/p;

    .line 19
    .line 20
    const-class v3, Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v3}, LC2/H;->c(Ljava/lang/Class;Ljava/lang/Class;)LC2/C;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, v2, p1}, LC2/p;-><init>(Landroid/content/res/Resources;LC2/C;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1
    new-instance v0, LC2/p;

    .line 31
    .line 32
    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 33
    .line 34
    invoke-virtual {p1, v1, v3}, LC2/H;->c(Ljava/lang/Class;Ljava/lang/Class;)LC2/C;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, v2, p1}, LC2/p;-><init>(Landroid/content/res/Resources;LC2/C;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
