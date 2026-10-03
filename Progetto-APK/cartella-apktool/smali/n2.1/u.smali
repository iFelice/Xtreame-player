.class public final Ln2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/g;


# instance fields
.field public final a:Lp2/a;

.field public final b:Ll2/a;

.field public final c:Lm2/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WMFgUpdater"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ll2/a;Lp2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ln2/u;->b:Ll2/a;

    .line 5
    .line 6
    iput-object p3, p0, Ln2/u;->a:Lp2/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ln2/u;->c:Lm2/s;

    .line 13
    .line 14
    return-void
.end method
