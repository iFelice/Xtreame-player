.class public final Ls0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/http/UrlRequest$StatusListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lp0/i;


# direct methods
.method public constructor <init>([ILp0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls0/F;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Ls0/F;->b:Lp0/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/F;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p1, p0, Ls0/F;->b:Lp0/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Lp0/i;->f()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
