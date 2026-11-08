.class public abstract LH2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw2/k;

.field public static final b:Lw2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lw2/b;->I:Lw2/b;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw2/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lw2/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LH2/i;->a:Lw2/k;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lw2/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lw2/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LH2/i;->b:Lw2/k;

    .line 20
    .line 21
    return-void
.end method
