.class public final Lf6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lf6/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const-wide/high16 v3, -0x8000000000000000L

    .line 7
    .line 8
    invoke-direct {v0, v2, v1, v3, v4}, Lf6/c;-><init>(Ljava/lang/Object;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lf6/a;->a:Lf6/c;

    .line 12
    .line 13
    new-instance v0, LW0/w;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-wide v3, v0, LW0/w;->a:J

    .line 19
    .line 20
    return-void
.end method
