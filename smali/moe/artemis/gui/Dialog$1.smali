.class Lmoe/artemis/gui/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/artemis/gui/Dialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/artemis/gui/Dialog;


# direct methods
.method constructor <init>(Lmoe/artemis/gui/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lmoe/artemis/gui/Dialog$1;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 39
    iget-object p1, p0, Lmoe/artemis/gui/Dialog$1;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {p1}, Lmoe/artemis/gui/Dialog;->access$000(Lmoe/artemis/gui/Dialog;)J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p1, v2, v3, v0, v1}, Lmoe/artemis/gui/Dialog;->access$100(Lmoe/artemis/gui/Dialog;ILjava/lang/String;J)V

    return-void
.end method
