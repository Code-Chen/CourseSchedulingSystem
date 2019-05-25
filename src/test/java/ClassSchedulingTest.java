import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.CourseSchedulingSystemApplication;
import com.xnxy.CourseSchedulingSystem.Dao.ClassTaskDao;
import com.xnxy.CourseSchedulingSystem.Service.IClassSchedulingService;
import com.xnxy.CourseSchedulingSystem.Service.Impl.ClassSchedulingService;
import com.xnxy.CourseSchedulingSystem.Service.Impl.ClassTaskService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.*;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = CourseSchedulingSystemApplication.class)
public class ClassSchedulingTest {
    @Autowired
    ClassTaskDao classTaskDao;
    @Autowired
    ClassTaskService classTaskService;
    @Autowired
    IClassSchedulingService iclassSchedulingService;


    @Test
    public void codingTimeTest() {
        ClassTask classTask = new ClassTask();
        classTask.setSemester("2015-2016-1");
        if(iclassSchedulingService.classScheduling(classTask)){
            System.out.println("成功成功");
        }else{
            System.out.println("失败失败");
        }


    }


    @Test
    public void transformIndividualTest() {
        Map<String, List<String>> individualMap = new HashMap<>();
        List<String> individualList = new ArrayList<>();
        List<String> individualList2 = new ArrayList<>();
        List<String> individualList3 = new ArrayList<>();
        individualList.add("2012015010101011000021000010102");
        individualList.add("2012015010101011000021000010115");
        individualList.add("1182015010101011000011000010118");
        individualList.add("1172015010101011000011000010117");
        individualList.add("1062015010101011000011000010106");
        individualList.add("1042015010101011000011000010104");
        individualList.add("1132015010101011000011000010113");
        individualList.add("1212015010101011000011000010121");

        individualList2.add("2012015020101021000011000010102");
        individualList2.add("2012015020101021000011000010115");
        individualList2.add("1182015020101021000011000010118");
        individualList2.add("1172015020101021000011000010117");
        individualList2.add("1062015020101021000011000010106");
        individualList2.add("1042015020101021000011000010104");
        individualList2.add("1132015020101021000011000010113");
        individualList2.add("1212015020101011000011000010124");

        individualList3.add("2012015020301031000021000010102");
        individualList3.add("2012015020301031000021000010115");
        individualList3.add("1182015020301031000021000010118");
        individualList3.add("1172015020301031000021000010117");
        individualList3.add("1062015020301031000021000010106");
        individualList3.add("1042015020301031000021000010104");
        individualList3.add("1132015020301021000011000010111");
        individualList3.add("1212015020301011000011000010123");

        individualMap.put("2105010101", individualList);
        individualMap.put("2015020101", individualList2);
        individualMap.put("2015020301", individualList3);

        // ClassSchedulingService classSchedulingService = new ClassSchedulingService();
        individualMap = iclassSchedulingService.geneticEvolution(individualMap);
        List<String> resultList = iclassSchedulingService.finalResult(individualMap);
//        for (String classNo : individualMap.keySet()) {
//            System.out.println("********************" + classNo);
//            List<String> strings = individualMap.get(classNo);
//            for (String gene : strings) {
//                System.out.println(gene);
//            }
//        }
        for(String result:resultList){
            System.out.println(result);
        }
   }

}
